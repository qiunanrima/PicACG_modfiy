package com.picacomic.fregata.compose.navigation

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
    object ProfileEdit : Screen("profile_edit", R.string.edit)
    object Leaderboard : Screen("leaderboard", R.string.category_title_leaderboard)

    companion object {
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
                category?.let { "category=$it" },
                keywords?.let { "keywords=$it" },
                tags?.let { "tags=$it" },
                author?.let { "author=$it" },
                finished?.let { "finished=$it" },
                sorting?.let { "sorting=$it" },
                translate?.let { "translate=$it" },
                creatorId?.let { "creatorId=$it" },
                creatorName?.let { "creatorName=$it" }
            )
            return if (params.isEmpty()) "comic_list" else "comic_list?${params.joinToString("&")}"
        }

        fun createComicDetailRoute(comicId: String) = "comic_detail/$comicId"
        fun createGameDetailRoute(gameId: String) = "game_detail/$gameId"
        fun createCommentRoute(comicId: String? = null, gameId: String? = null, commentId: String? = null) = 
            "comment?" + listOfNotNull(
                comicId?.let { "comicId=$it" },
                gameId?.let { "gameId=$it" },
                commentId?.let { "commentId=$it" }
            ).joinToString("&")
        fun createPicaAppRoute(title: String, link: String) = "pica_app?title=$title&link=$link"
    }
}


val navItems = listOf(
    Screen.Home,
    Screen.Category,
    Screen.Game,
    Screen.Profile,
    Screen.Settings
)
