package com.picacomic.fregata.compose.navigation

import android.net.Uri
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Category
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Person
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.SportsEsports
import androidx.compose.material.icons.outlined.Category
import androidx.compose.material.icons.outlined.Home
import androidx.compose.material.icons.outlined.Person
import androidx.compose.material.icons.outlined.Settings
import androidx.compose.material.icons.outlined.SportsEsports
import androidx.compose.ui.graphics.vector.ImageVector
import com.picacomic.fregata.R

sealed class Screen(
    val route: String,
    val titleRes: Int,
    val selectedIcon: ImageVector? = null,
    val unselectedIcon: ImageVector? = null
) {
    object Home : Screen("home", R.string.title_home, Icons.Filled.Home, Icons.Outlined.Home)
    object Category : Screen("category", R.string.title_category, Icons.Filled.Category, Icons.Outlined.Category)
    object Game : Screen("game", R.string.title_game_list, Icons.Filled.SportsEsports, Icons.Outlined.SportsEsports)
    object Profile : Screen("profile", R.string.title_profile, Icons.Filled.Person, Icons.Outlined.Person)
    object Settings : Screen("settings", R.string.title_setting, Icons.Filled.Settings, Icons.Outlined.Settings)

    // Secondary Screens
    object Notification : Screen("notification", R.string.title_notification)
    object ComicList : Screen("comic_list?category={category}&keywords={keywords}&tags={tags}&author={author}&finished={finished}&sorting={sorting}&translate={translate}&creatorId={creatorId}&creatorName={creatorName}", R.string.title_search)
    object ComicDetail : Screen("comic_detail/{comicId}", R.string.title_comic_detail_default)
    object GameDetail : Screen("game_detail/{gameId}", R.string.title_game_detail)
    object Comment : Screen("comment?comicId={comicId}&gameId={gameId}&commentId={commentId}", R.string.title_comment)
    object PicaApp : Screen("pica_app?title={title}&link={link}", R.string.app_name)
    object PicaAppList : Screen("pica_app_list", R.string.title_pica_app)
    object ApkVersionList : Screen("apk_version_list", R.string.title_apk_version)
    object AnnouncementList : Screen("announcement_list", R.string.title_announcement)
    object ProfileEdit : Screen("profile_edit", R.string.edit)
    object Leaderboard : Screen("leaderboard", R.string.category_title_leaderboard)
    object ChangePin : Screen("change_pin", R.string.setting_pin_title)
    object ChangePassword : Screen("change_password", R.string.setting_password_title)

    companion object {
        private fun enc(value: String): String = Uri.encode(value)

        fun createComicListRoute(
            category: String? = null,
            keywords: String? = null,
            tags: String? = null,
            author: String? = null,
            finished: String? = null,
            sorting: String? = null,
            translate: String? = null,
            creatorId: String? = null,
            creatorName: String? = null
        ): String {
            val params = listOfNotNull(
                category?.takeIf { it.isNotBlank() }?.let { "category=${enc(it)}" },
                keywords?.takeIf { it.isNotBlank() }?.let { "keywords=${enc(it)}" },
                tags?.takeIf { it.isNotBlank() }?.let { "tags=${enc(it)}" },
                author?.takeIf { it.isNotBlank() }?.let { "author=${enc(it)}" },
                finished?.takeIf { it.isNotBlank() }?.let { "finished=${enc(it)}" },
                sorting?.takeIf { it.isNotBlank() }?.let { "sorting=${enc(it)}" },
                translate?.takeIf { it.isNotBlank() }?.let { "translate=${enc(it)}" },
                creatorId?.takeIf { it.isNotBlank() }?.let { "creatorId=${enc(it)}" },
                creatorName?.takeIf { it.isNotBlank() }?.let { "creatorName=${enc(it)}" }
            )
            return if (params.isEmpty()) "comic_list" else "comic_list?${params.joinToString("&")}"
        }

        fun createComicDetailRoute(comicId: String) = "comic_detail/$comicId"
        fun createGameDetailRoute(gameId: String) = "game_detail/$gameId"
        fun createCommentRoute(comicId: String? = null, gameId: String? = null, commentId: String? = null) = 
            "comment?" + listOfNotNull(
                comicId?.takeIf { it.isNotBlank() }?.let { "comicId=${enc(it)}" },
                gameId?.takeIf { it.isNotBlank() }?.let { "gameId=${enc(it)}" },
                commentId?.takeIf { it.isNotBlank() }?.let { "commentId=${enc(it)}" }
            ).joinToString("&")
        fun createPicaAppRoute(title: String, link: String) =
            "pica_app?title=${enc(title)}&link=${enc(link)}"
    }
}


val navItems = listOf(
    Screen.Home,
    Screen.Category,
    Screen.Game,
    Screen.Profile,
    Screen.Settings
)
