package com.picacomic.fregata.utils

import coil.intercept.Interceptor
import coil.request.ErrorResult
import coil.request.ImageResult
import java.io.InterruptedIOException
import kotlinx.coroutines.delay

internal object ImageTimeoutRetry : Interceptor {
    override suspend fun intercept(chain: Interceptor.Chain): ImageResult {
        val request = chain.request
        var result = chain.proceed(request)
        if (!request.networkCachePolicy.readEnabled) return result
        for (backoff in listOf(1_000L, 3_000L)) {
            val error = (result as? ErrorResult)?.throwable ?: break
            if (generateSequence(error) { it.cause }.none { it is InterruptedIOException }) break
            delay(backoff)
            result = chain.proceed(request)
        }
        return result
    }
}
