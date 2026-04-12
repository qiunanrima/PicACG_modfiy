package com.picacomic.fregata.compose.viewmodels

import android.app.Application
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.picacomic.fregata.b.d
import com.picacomic.fregata.objects.CategoryObject
import com.picacomic.fregata.objects.responses.CategoryResponse
import com.picacomic.fregata.objects.responses.GeneralResponse
import com.picacomic.fregata.objects.responses.KeywordsResponse
import com.picacomic.fregata.utils.e
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class CategoryViewModel(application: Application) : AndroidViewModel(application) {
    val categories = mutableStateListOf<CategoryObject>()
    val keywords = mutableStateListOf<String>()
    var isLoading by mutableStateOf(false)

    private var categoryCall: Call<GeneralResponse<CategoryResponse>>? = null
    private var keywordsCall: Call<GeneralResponse<KeywordsResponse>>? = null

    init {
        loadCachedCategories()
        loadData()
    }

    private fun loadCachedCategories() {
        val context = getApplication<Application>()
        val cached = e.C(context)
        if (cached.isNullOrEmpty()) {
            return
        }
        try {
            val type = object : TypeToken<List<CategoryObject>>() {}.type
            val cachedList: List<CategoryObject> = Gson().fromJson(cached, type) ?: emptyList()
            if (cachedList.isNotEmpty()) {
                categories.clear()
                categories.addAll(cachedList)
            }
        } catch (_: Exception) {
        }
    }

    fun loadData() {
        isLoading = true
        fetchCategories()
        fetchKeywords()
    }

    private fun fetchCategories() {
        val context = getApplication<Application>()
        categoryCall = d(context).dO().al(e.z(context))
        categoryCall?.enqueue(object : Callback<GeneralResponse<CategoryResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<CategoryResponse>>,
                response: Response<GeneralResponse<CategoryResponse>>
            ) {
                if (response.code() == 200) {
                    categories.clear()
                    response.body()?.data?.categories?.let {
                        categories.addAll(it)
                        e.j(context, Gson().toJson(it))
                    }
                }
                isLoading = false
            }

            override fun onFailure(call: Call<GeneralResponse<CategoryResponse>>, t: Throwable) {
                isLoading = false
            }
        })
    }

    private fun fetchKeywords() {
        val context = getApplication<Application>()
        keywordsCall = d(context).dO().ar(e.z(context))
        keywordsCall?.enqueue(object : Callback<GeneralResponse<KeywordsResponse>> {
            override fun onResponse(
                call: Call<GeneralResponse<KeywordsResponse>>,
                response: Response<GeneralResponse<KeywordsResponse>>
            ) {
                if (response.code() == 200) {
                    keywords.clear()
                    response.body()?.data?.keywords?.let { keywords.addAll(it) }
                }
            }

            override fun onFailure(call: Call<GeneralResponse<KeywordsResponse>>, t: Throwable) {}
        })
    }

    override fun onCleared() {
        categoryCall?.cancel()
        keywordsCall?.cancel()
        super.onCleared()
    }
}
