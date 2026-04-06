package com.picacomic.fregata.compose.views

import android.content.Context
import android.util.AttributeSet
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.platform.AbstractComposeView
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme

class PicaSplashComposeView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : AbstractComposeView(context, attrs, defStyleAttr) {

    private var showOptionsState by mutableStateOf(false)
    private var showErrorState by mutableStateOf(false)
    private var loadingState by mutableStateOf(true)

    private var onRetry: Runnable? = null
    private var onServer1: Runnable? = null
    private var onServer2: Runnable? = null
    private var onServer3: Runnable? = null

    fun setShowOptions(value: Boolean) {
        showOptionsState = value
    }

    fun setShowError(value: Boolean) {
        showErrorState = value
    }

    fun setLoading(value: Boolean) {
        loadingState = value
    }

    fun setOnRetryAction(action: Runnable?) {
        onRetry = action
    }

    fun setOnServer1Action(action: Runnable?) {
        onServer1 = action
    }

    fun setOnServer2Action(action: Runnable?) {
        onServer2 = action
    }

    fun setOnServer3Action(action: Runnable?) {
        onServer3 = action
    }

    @Composable
    override fun Content() {
        PicaComposeTheme {
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .background(MaterialTheme.colorScheme.background)
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxSize()
                        .verticalScroll(rememberScrollState())
                        .padding(20.dp),
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    Spacer(modifier = Modifier.height(20.dp))
                    Image(
                        painter = painterResource(id = R.drawable.icon_256),
                        contentDescription = null,
                        contentScale = ContentScale.Fit,
                        modifier = Modifier
                            .fillMaxWidth()
                            .clip(RoundedCornerShape(28.dp))
                    )
                    Spacer(modifier = Modifier.height(24.dp))
                    if (loadingState && !showOptionsState && !showErrorState) {
                        CircularProgressIndicator()
                        Spacer(modifier = Modifier.height(12.dp))
                        Text(
                            text = stringResource(id = R.string.loading_general),
                            style = MaterialTheme.typography.bodyMedium
                        )
                    }
                    if (showErrorState) {
                        SplashCard {
                            Text(
                                text = stringResource(id = R.string.splash_error),
                                style = MaterialTheme.typography.titleMedium,
                                fontWeight = FontWeight.SemiBold
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Button(
                                onClick = { onRetry?.run() },
                                modifier = Modifier.fillMaxWidth()
                            ) {
                                Text(text = stringResource(id = R.string.splash_retry))
                            }
                        }
                    }
                    if (showOptionsState) {
                        SplashCard {
                            Button(
                                onClick = { onServer1?.run() },
                                modifier = Modifier.fillMaxWidth()
                            ) {
                                Text(text = stringResource(id = R.string.splash_server_1))
                            }
                            Spacer(modifier = Modifier.height(12.dp))
                            Text(
                                text = stringResource(id = R.string.splash_remark),
                                style = MaterialTheme.typography.bodyMedium
                            )
                            Spacer(modifier = Modifier.height(12.dp))
                            OutlinedButton(
                                onClick = { onServer2?.run() },
                                modifier = Modifier.fillMaxWidth()
                            ) {
                                Text(text = stringResource(id = R.string.splash_server_2))
                            }
                            Spacer(modifier = Modifier.height(10.dp))
                            OutlinedButton(
                                onClick = { onServer3?.run() },
                                modifier = Modifier.fillMaxWidth()
                            ) {
                                Text(text = stringResource(id = R.string.splash_server_3))
                            }
                        }
                    }
                    Spacer(modifier = Modifier.height(24.dp))
                }
            }
        }
    }

    @Composable
    private fun SplashCard(content: @Composable () -> Unit) {
        Card(
            modifier = Modifier.fillMaxWidth()
        ) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(20.dp),
                verticalArrangement = Arrangement.Center
            ) {
                content()
            }
        }
    }
}
