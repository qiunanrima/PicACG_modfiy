.class public Lcom/picacomic/fregata/activities/ComicViewerActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ComicViewerActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private iq:Lcom/picacomic/fregata/activities/ComicViewerActivity;


# direct methods
.method public constructor <init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity_ViewBinding;->iq:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    const-string v0, "field \'relativeLayout_toolbar\'"

    .line 35
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090206

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->relativeLayout_toolbar:Landroid/widget/RelativeLayout;

    const-string v0, "field \'relativeLayout_leftPanel\'"

    .line 36
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090205

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->relativeLayout_leftPanel:Landroid/widget/RelativeLayout;

    const-string v0, "field \'linearLayout_rightPanel\'"

    .line 37
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09019c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_rightPanel:Landroid/widget/LinearLayout;

    const-string v0, "field \'linearLayout_bottomPanel\'"

    .line 38
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090199

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_bottomPanel:Landroid/widget/LinearLayout;

    const-string v0, "field \'frameLayout_nightModeMask\'"

    .line 39
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090105

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->frameLayout_nightModeMask:Landroid/widget/FrameLayout;

    const-string v0, "field \'linearLayout_verticalPagingScrollbar\'"

    .line 40
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09019e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_verticalPagingScrollbar:Landroid/widget/LinearLayout;

    const-string v0, "field \'linearLayout_horizontalPagingScrollbar\'"

    .line 41
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09019b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_horizontalPagingScrollbar:Landroid/widget/LinearLayout;

    const-string v0, "field \'gridView_episodeDialog\'"

    .line 42
    const-class v1, Landroid/widget/GridView;

    const v2, 0x7f090115

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->gridView_episodeDialog:Landroid/widget/GridView;

    const-string v0, "field \'linearLayout_dialogAutoPaging\'"

    .line 43
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09019a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_dialogAutoPaging:Landroid/widget/LinearLayout;

    const-string v0, "field \'button_nextPageBottom\'"

    .line 44
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090057

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextPageBottom:Landroid/widget/Button;

    const-string v0, "field \'button_nextPageRight\'"

    .line 45
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090058

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextPageRight:Landroid/widget/Button;

    const-string v0, "field \'button_previousPage\'"

    .line 46
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09005d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_previousPage:Landroid/widget/Button;

    const-string v0, "field \'button_panel\'"

    .line 47
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09005a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panel:Landroid/widget/Button;

    const-string v0, "field \'button_panelLeftCorner\'"

    .line 48
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09005b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panelLeftCorner:Landroid/widget/Button;

    const-string v0, "field \'frameLayout_gestureArea\'"

    .line 49
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090104

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->frameLayout_gestureArea:Landroid/widget/FrameLayout;

    const-string v0, "field \'button_nextEpisode\'"

    .line 50
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090056

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextEpisode:Landroid/widget/Button;

    const-string v0, "field \'button_previousEpisode\'"

    .line 51
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09005c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_previousEpisode:Landroid/widget/Button;

    const-string v0, "field \'imageButton_back\'"

    .line 52
    const-class v1, Landroid/widget/ImageButton;

    const v2, 0x7f09012a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->imageButton_back:Landroid/widget/ImageButton;

    const-string v0, "field \'button_hint\'"

    .line 53
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090055

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_hint:Landroid/widget/Button;

    const-string v0, "field \'button_share\'"

    .line 54
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090062

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_share:Landroid/widget/Button;

    const-string v0, "field \'button_download\'"

    .line 55
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090053

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_download:Landroid/widget/Button;

    const-string v0, "field \'textView_title\'"

    .line 56
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090288

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->textView_title:Landroid/widget/TextView;

    const-string v0, "field \'textView_page\'"

    .line 57
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090287

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->textView_page:Landroid/widget/TextView;

    const-string v0, "field \'checkBox_brightnessSystem\'"

    .line 58
    const-class v1, Landroid/widget/CheckBox;

    const v2, 0x7f0900a1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->checkBox_brightnessSystem:Landroid/widget/CheckBox;

    const-string v0, "field \'verticalSeekBar_brightness\'"

    .line 59
    const-class v1, Lcom/picacomic/fregata/utils/views/VerticalSeekBar;

    const v2, 0x7f090319

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/utils/views/VerticalSeekBar;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->verticalSeekBar_brightness:Lcom/picacomic/fregata/utils/views/VerticalSeekBar;

    const-string v0, "field \'button_selectEpisode\'"

    .line 60
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090060

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_selectEpisode:Landroid/widget/Button;

    const-string v0, "field \'button_nightMode\'"

    .line 61
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090059

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nightMode:Landroid/widget/Button;

    const-string v0, "field \'button_comment\'"

    .line 62
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090051

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_comment:Landroid/widget/Button;

    const-string v0, "field \'textView_horizontalPage\'"

    .line 63
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090286

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->textView_horizontalPage:Landroid/widget/TextView;

    const-string v0, "field \'textView_verticalPage\'"

    .line 64
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090289

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->textView_verticalPage:Landroid/widget/TextView;

    const-string v0, "field \'button_screenOrientation\'"

    .line 65
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09005e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_screenOrientation:Landroid/widget/Button;

    const-string v0, "field \'button_scrollOrientation\'"

    .line 66
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f09005f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_scrollOrientation:Landroid/widget/Button;

    const-string v0, "field \'button_autoPaging\'"

    .line 67
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090050

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_autoPaging:Landroid/widget/Button;

    const-string v0, "field \'button_twoPageViewMode\'"

    .line 68
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090063

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_twoPageViewMode:Landroid/widget/Button;

    const-string v0, "field \'button_setting\'"

    .line 69
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090061

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_setting:Landroid/widget/Button;

    const-string v0, "field \'button_hide\'"

    .line 70
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090054

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_hide:Landroid/widget/Button;

    const-string v0, "field \'seekBar_horizontalPaging\'"

    .line 71
    const-class v1, Landroid/widget/SeekBar;

    const v2, 0x7f090225

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->seekBar_horizontalPaging:Landroid/widget/SeekBar;

    const-string v0, "field \'seekBar_verticalPaging\'"

    .line 72
    const-class v1, Landroid/widget/SeekBar;

    const v2, 0x7f090226

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->seekBar_verticalPaging:Landroid/widget/SeekBar;

    const-string v0, "field \'textView_dialogAutoPagingTitle\'"

    .line 73
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090285

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->textView_dialogAutoPagingTitle:Landroid/widget/TextView;

    const-string v0, "field \'seekBar_dialogAutoPaging\'"

    .line 74
    const-class v1, Landroid/widget/SeekBar;

    const v2, 0x7f090224

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->seekBar_dialogAutoPaging:Landroid/widget/SeekBar;

    const-string v0, "field \'button_dialogAutoPagingStart\'"

    .line 75
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f090052

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_dialogAutoPagingStart:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity_ViewBinding;->iq:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity_ViewBinding;->iq:Lcom/picacomic/fregata/activities/ComicViewerActivity;

    .line 85
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->relativeLayout_toolbar:Landroid/widget/RelativeLayout;

    .line 86
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->relativeLayout_leftPanel:Landroid/widget/RelativeLayout;

    .line 87
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_rightPanel:Landroid/widget/LinearLayout;

    .line 88
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_bottomPanel:Landroid/widget/LinearLayout;

    .line 89
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->frameLayout_nightModeMask:Landroid/widget/FrameLayout;

    .line 90
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_verticalPagingScrollbar:Landroid/widget/LinearLayout;

    .line 91
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_horizontalPagingScrollbar:Landroid/widget/LinearLayout;

    .line 92
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->gridView_episodeDialog:Landroid/widget/GridView;

    .line 93
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_dialogAutoPaging:Landroid/widget/LinearLayout;

    .line 94
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextPageBottom:Landroid/widget/Button;

    .line 95
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextPageRight:Landroid/widget/Button;

    .line 96
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_previousPage:Landroid/widget/Button;

    .line 97
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panel:Landroid/widget/Button;

    .line 98
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panelLeftCorner:Landroid/widget/Button;

    .line 99
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->frameLayout_gestureArea:Landroid/widget/FrameLayout;

    .line 100
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextEpisode:Landroid/widget/Button;

    .line 101
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_previousEpisode:Landroid/widget/Button;

    .line 102
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->imageButton_back:Landroid/widget/ImageButton;

    .line 103
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_hint:Landroid/widget/Button;

    .line 104
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_share:Landroid/widget/Button;

    .line 105
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_download:Landroid/widget/Button;

    .line 106
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->textView_title:Landroid/widget/TextView;

    .line 107
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->textView_page:Landroid/widget/TextView;

    .line 108
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->checkBox_brightnessSystem:Landroid/widget/CheckBox;

    .line 109
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->verticalSeekBar_brightness:Lcom/picacomic/fregata/utils/views/VerticalSeekBar;

    .line 110
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_selectEpisode:Landroid/widget/Button;

    .line 111
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nightMode:Landroid/widget/Button;

    .line 112
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_comment:Landroid/widget/Button;

    .line 113
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->textView_horizontalPage:Landroid/widget/TextView;

    .line 114
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->textView_verticalPage:Landroid/widget/TextView;

    .line 115
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_screenOrientation:Landroid/widget/Button;

    .line 116
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_scrollOrientation:Landroid/widget/Button;

    .line 117
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_autoPaging:Landroid/widget/Button;

    .line 118
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_twoPageViewMode:Landroid/widget/Button;

    .line 119
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_setting:Landroid/widget/Button;

    .line 120
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_hide:Landroid/widget/Button;

    .line 121
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->seekBar_horizontalPaging:Landroid/widget/SeekBar;

    .line 122
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->seekBar_verticalPaging:Landroid/widget/SeekBar;

    .line 123
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->textView_dialogAutoPagingTitle:Landroid/widget/TextView;

    .line 124
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->seekBar_dialogAutoPaging:Landroid/widget/SeekBar;

    .line 125
    iput-object v1, v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_dialogAutoPagingStart:Landroid/widget/Button;

    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
