package com.picacomic.fregata.compose.screens

import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.webkit.WebView
import android.widget.Toast
import androidx.compose.foundation.Image
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.ContentCopy
import androidx.compose.material.icons.filled.OpenInBrowser
import androidx.compose.material.icons.filled.SportsEsports
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.AssistChip
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Tab
import androidx.compose.material3.TabRow
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.material3.surfaceColorAtElevation
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalInspectionMode
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringArrayResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import com.picacomic.fregata.R
import com.picacomic.fregata.compose.PicaComposeTheme
import com.picacomic.fregata.utils.a
import com.picacomic.fregata.utils.g

private val paypalLinks = listOf(
    "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MB2YUFR74MDJC",
    "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=SLMX9KT5QG2TJ",
    "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=CZ9ZGGEV5JFC8",
    "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=BP6DZ5GMR4A9N",
    "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=6U3R7MRUR5HZJ",
    "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=UFRC5P8VGMPWU",
)

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SupportUsScreen(
    onBack: () -> Unit,
    onGameClick: () -> Unit,
) {
    val context = LocalContext.current
    val inPreview = LocalInspectionMode.current
    var selectedTab by rememberSaveable { mutableIntStateOf(0) }
    var showIntro by rememberSaveable { mutableStateOf(true) }
    val tabs = listOf(
        stringResource(R.string.support_us_tab_qq),
        stringResource(R.string.support_us_tab_group),
        stringResource(R.string.support_us_tab_ads),
        stringResource(R.string.support_us_tab_paypal),
    )

    PicaComposeTheme {
        val scrollBehavior = TopAppBarDefaults.pinnedScrollBehavior()
        if (showIntro && !inPreview) {
            AlertDialog(
                onDismissRequest = { showIntro = false },
                title = { Text(stringResource(R.string.alert_support_us_title)) },
                text = { Text(stringResource(R.string.alert_support_us)) },
                confirmButton = {
                    TextButton(onClick = { showIntro = false }) {
                        Text(stringResource(R.string.ok))
                    }
                },
            )
        }
        Scaffold(
            modifier = Modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                Column {
                    TopAppBar(
                        title = {
                            Text(
                                text = stringResource(R.string.title_support_us),
                                style = MaterialTheme.typography.titleLarge,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                            )
                        },
                        navigationIcon = {
                            IconButton(onClick = onBack) {
                                Icon(
                                    imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                                    contentDescription = stringResource(R.string.back),
                                )
                            }
                        },
                        colors = TopAppBarDefaults.topAppBarColors(
                            containerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                            scrolledContainerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                        ),
                        scrollBehavior = scrollBehavior,
                    )
                    TabRow(
                        selectedTabIndex = selectedTab,
                        containerColor = MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp),
                    ) {
                        tabs.forEachIndexed { index, title ->
                            Tab(
                                selected = selectedTab == index,
                                onClick = { selectedTab = index },
                                text = {
                                    Text(
                                        text = title,
                                        maxLines = 1,
                                        overflow = TextOverflow.Ellipsis,
                                    )
                                },
                            )
                        }
                    }
                }
            },
            containerColor = MaterialTheme.colorScheme.background,
        ) { innerPadding ->
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(innerPadding),
            ) {
                when (selectedTab) {
                    0 -> SupportUsQqAlipayTab(context)
                    1 -> SupportUsGroupTab(context)
                    2 -> SupportUsAdsGameTab(onGameClick = onGameClick, inPreview = inPreview)
                    else -> SupportUsPayPalTab(context)
                }
            }
        }
    }
}

@Composable
private fun SupportUsQqAlipayTab(context: Context) {
    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp),
    ) {
        item {
            SupportSectionCard(title = stringResource(R.string.support_us_qq_title)) {
                Text(
                    text = "QQ 支援信息请以官方公告为准。",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
        }
        item {
            val account = stringResource(R.string.support_us_alipay_account)
            SupportSectionCard(title = stringResource(R.string.support_us_alipay_title)) {
                Text(
                    text = stringResource(R.string.support_us_alipay_account_title),
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.SemiBold,
                    color = MaterialTheme.colorScheme.primary,
                )
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .clickable { copySupportText(context, account) },
                    horizontalArrangement = Arrangement.spacedBy(10.dp),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Text(
                        text = account,
                        style = MaterialTheme.typography.headlineSmall,
                        fontWeight = FontWeight.Bold,
                        modifier = Modifier.weight(1f),
                    )
                    Icon(
                        imageVector = Icons.Filled.ContentCopy,
                        contentDescription = stringResource(R.string.alert_copied),
                        tint = MaterialTheme.colorScheme.primary,
                    )
                }
            }
        }
    }
}

@Composable
private fun SupportUsGroupTab(context: Context) {
    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp),
    ) {
        item {
            Card(
                modifier = Modifier
                    .fillMaxWidth()
                    .clickable {
                        com.picacomic.fregata.utils.views.AlertDialogCenter.showFaqAlertDialog(
                            context,
                            "https://www.picacomic.com/faq",
                            null,
                        )
                    },
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.errorContainer,
                    contentColor = MaterialTheme.colorScheme.onErrorContainer,
                ),
            ) {
                Text(
                    text = stringResource(R.string.support_us_offical_group_warning),
                    modifier = Modifier.padding(16.dp),
                    style = MaterialTheme.typography.titleSmall,
                    fontWeight = FontWeight.SemiBold,
                    textAlign = TextAlign.Center,
                )
            }
        }
        item {
            SupportSectionCard(title = stringResource(R.string.support_us_offical_groups_chat_title)) {
                SelectableBlock(text = stringResource(R.string.support_us_offical_groups_chat))
            }
        }
        item {
            SupportSectionCard(title = stringResource(R.string.support_us_offical_groups_game_title)) {
                SelectableBlock(text = stringResource(R.string.support_us_offical_groups_game))
            }
        }
        item {
            SupportSectionCard(title = stringResource(R.string.support_us_offical_groups_line_title)) {
                SelectableBlock(text = stringResource(R.string.support_us_offical_line))
                SelectableBlock(text = stringResource(R.string.support_us_offical_line_at))
            }
        }
    }
}

@Composable
private fun SupportUsAdsGameTab(
    onGameClick: () -> Unit,
    inPreview: Boolean,
) {
    var hostedWebView by remember { mutableStateOf<WebView?>(null) }
    DisposableEffect(hostedWebView) {
        onDispose {
            hostedWebView?.apply {
                stopLoading()
                loadUrl("about:blank")
                removeAllViews()
                destroy()
            }
            hostedWebView = null
        }
    }

    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp),
    ) {
        item {
            SupportSectionCard(title = stringResource(R.string.support_us_game_title)) {
                Button(
                    onClick = onGameClick,
                    modifier = Modifier.fillMaxWidth(),
                ) {
                    Icon(imageVector = Icons.Filled.SportsEsports, contentDescription = null)
                    Text(
                        text = stringResource(R.string.category_title_game),
                        modifier = Modifier.padding(start = 8.dp),
                    )
                }
            }
        }
        item {
            SupportSectionCard(title = stringResource(R.string.support_us_ads_title)) {
                if (inPreview) {
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(180.dp),
                        contentAlignment = Alignment.Center,
                    ) {
                        Text("Ads WebView Preview")
                    }
                } else {
                    AndroidView(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(220.dp),
                        factory = { context ->
                            WebView(context).apply {
                                g.k(this)
                                loadUrl(a.dS())
                            }
                        },
                        update = { hostedWebView = it },
                    )
                }
            }
        }
    }
}

@Composable
private fun SupportUsPayPalTab(context: Context) {
    val titles = stringArrayResource(R.array.support_us_paypal_titles).toList()
    val prices = stringArrayResource(R.array.support_us_paypal_prices).toList()
    val priceUnit = stringResource(R.string.support_us_paypal_price_unit)
    val description = stringResource(R.string.support_us_paypal_description_default)
    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp),
    ) {
        itemsIndexed(titles, key = { index, title -> "$title-$index" }) { index, title ->
            PayPalSupportCard(
                title = title,
                price = prices.getOrElse(index) { "" },
                priceUnit = priceUnit,
                description = description,
                onClick = {
                    paypalLinks.getOrNull(index)?.let { g.A(context, it) }
                },
            )
        }
    }
}

@Composable
private fun SupportSectionCard(
    title: String,
    content: @Composable ColumnScope.() -> Unit,
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceContainerHighest,
            contentColor = MaterialTheme.colorScheme.onSurface,
        ),
    ) {
        Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp),
            content = {
                Text(
                    text = title,
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.SemiBold,
                    color = MaterialTheme.colorScheme.primary,
                )
                content()
            },
        )
    }
}

@Composable
private fun SelectableBlock(text: String) {
    Text(
        text = text,
        style = MaterialTheme.typography.bodyLarge,
        textAlign = TextAlign.Center,
        modifier = Modifier.fillMaxWidth(),
    )
}

@Composable
private fun PayPalSupportCard(
    title: String,
    price: String,
    priceUnit: String,
    description: String,
    onClick: () -> Unit,
) {
    Card(
        modifier = Modifier
            .fillMaxWidth()
            .clickable(onClick = onClick),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceContainerHighest,
            contentColor = MaterialTheme.colorScheme.onSurface,
        ),
    ) {
        Row(
            modifier = Modifier.padding(14.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Image(
                painter = painterResource(R.drawable.placeholder_avatar_2),
                contentDescription = null,
                modifier = Modifier.size(56.dp),
            )
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(4.dp),
            ) {
                Text(
                    text = title,
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.SemiBold,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
                Row(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                    Text(
                        text = priceUnit,
                        style = MaterialTheme.typography.titleSmall,
                        color = MaterialTheme.colorScheme.primary,
                    )
                    Text(
                        text = price,
                        style = MaterialTheme.typography.titleSmall,
                        color = MaterialTheme.colorScheme.primary,
                        fontWeight = FontWeight.Bold,
                    )
                }
                Text(
                    text = description,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis,
                )
            }
            Icon(
                imageVector = Icons.Filled.OpenInBrowser,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.primary,
            )
        }
    }
}

private fun copySupportText(context: Context, text: String) {
    val clipboard = context.getSystemService(Context.CLIPBOARD_SERVICE) as? ClipboardManager
    clipboard?.setPrimaryClip(ClipData.newPlainText("label", text))
    Toast.makeText(context, R.string.alert_copied, Toast.LENGTH_SHORT).show()
}

@Preview(showBackground = true)
@Composable
private fun SupportUsScreenPreview() {
    SupportUsScreen(onBack = {}, onGameClick = {})
}
