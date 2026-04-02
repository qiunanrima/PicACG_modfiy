.class public Lcom/picacomic/fregata/activities/ComicViewerActivity;
.super Lcom/picacomic/fregata/activities/BaseActivity;
.source "ComicViewerActivity.java"

# interfaces
.implements Lcom/picacomic/fregata/a/d;


# static fields
.field public static final TAG:Ljava/lang/String; = "ComicViewerActivity"

.field public static hq:I = 0x28


# instance fields
.field button_autoPaging:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090050
    .end annotation
.end field

.field button_comment:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090051
    .end annotation
.end field

.field button_dialogAutoPagingStart:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090052
    .end annotation
.end field

.field button_download:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090053
    .end annotation
.end field

.field button_hide:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090054
    .end annotation
.end field

.field button_hint:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090055
    .end annotation
.end field

.field button_nextEpisode:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090056
    .end annotation
.end field

.field button_nextPageBottom:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090057
    .end annotation
.end field

.field button_nextPageRight:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090058
    .end annotation
.end field

.field button_nightMode:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090059
    .end annotation
.end field

.field button_panel:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005a
    .end annotation
.end field

.field button_panelLeftCorner:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005b
    .end annotation
.end field

.field button_previousEpisode:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005c
    .end annotation
.end field

.field button_previousPage:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005d
    .end annotation
.end field

.field button_screenOrientation:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005e
    .end annotation
.end field

.field button_scrollOrientation:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005f
    .end annotation
.end field

.field button_selectEpisode:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090060
    .end annotation
.end field

.field button_setting:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090061
    .end annotation
.end field

.field button_share:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090062
    .end annotation
.end field

.field button_twoPageViewMode:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090063
    .end annotation
.end field

.field checkBox_brightnessSystem:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900a1
    .end annotation
.end field

.field public comicId:Ljava/lang/String;

.field currentPage:I

.field public episodeOrder:I

.field public episodeTotal:I

.field frameLayout_gestureArea:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090104
    .end annotation
.end field

.field frameLayout_nightModeMask:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090105
    .end annotation
.end field

.field gridView_episodeDialog:Landroid/widget/GridView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090115
    .end annotation
.end field

.field hA:Lcom/picacomic/fregata/adapters/c;

.field hB:Z

.field hC:Z

.field hD:Z

.field hE:Z

.field public hF:I

.field public hG:I

.field public hH:I

.field public hI:I

.field public hJ:I

.field public hK:Lcom/picacomic/fregata/objects/ComicEpisodeObject;

.field public hL:Ljava/lang/String;

.field hM:I

.field hN:I

.field hO:I

.field hP:I

.field hQ:Z

.field hR:Z

.field hS:Z

.field hT:Z

.field hU:Z

.field hV:Z

.field hW:Ljava/lang/String;

.field hX:Landroid/os/CountDownTimer;

.field hY:Landroid/os/CountDownTimer;

.field hZ:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicPageResponse/ComicPagesResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field hr:Landroid/view/animation/Animation;

.field hs:Landroid/view/animation/Animation;

.field ht:Landroid/view/animation/Animation;

.field hu:Landroid/view/animation/Animation;

.field hv:Landroid/view/animation/Animation;

.field hw:Landroid/view/animation/Animation;

.field hx:Landroid/view/animation/Animation;

.field hy:Landroid/view/animation/Animation;

.field hz:Lcom/picacomic/fregata/a/c;

.field ia:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/picacomic/fregata/objects/responses/GeneralResponse<",
            "Lcom/picacomic/fregata/objects/responses/DataClass/ComicEpisodeResponse/ComicEpisodeResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field ib:Landroid/view/View$OnClickListener;

.field ic:Landroid/view/View$OnClickListener;

.field ie:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public if:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicPageObject;",
            ">;"
        }
    .end annotation
.end field

.field ig:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/picacomic/fregata/objects/ComicEpisodeObject;",
            ">;"
        }
    .end annotation
.end field

.field private ih:Landroid/content/BroadcastReceiver;

.field private ii:Landroid/media/MediaPlayer;

.field imageButton_back:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09012a
    .end annotation
.end field

.field linearLayout_bottomPanel:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090199
    .end annotation
.end field

.field linearLayout_dialogAutoPaging:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09019a
    .end annotation
.end field

.field linearLayout_horizontalPagingScrollbar:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09019b
    .end annotation
.end field

.field linearLayout_rightPanel:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09019c
    .end annotation
.end field

.field linearLayout_verticalPagingScrollbar:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09019e
    .end annotation
.end field

.field relativeLayout_leftPanel:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090205
    .end annotation
.end field

.field relativeLayout_toolbar:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090206
    .end annotation
.end field

.field seekBar_dialogAutoPaging:Landroid/widget/SeekBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090224
    .end annotation
.end field

.field seekBar_horizontalPaging:Landroid/widget/SeekBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090225
    .end annotation
.end field

.field seekBar_verticalPaging:Landroid/widget/SeekBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090226
    .end annotation
.end field

.field textView_dialogAutoPagingTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090285
    .end annotation
.end field

.field textView_horizontalPage:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090286
    .end annotation
.end field

.field textView_page:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090287
    .end annotation
.end field

.field textView_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090288
    .end annotation
.end field

.field textView_verticalPage:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090289
    .end annotation
.end field

.field verticalSeekBar_brightness:Lcom/picacomic/fregata/utils/views/VerticalSeekBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090319
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/picacomic/fregata/activities/BaseActivity;-><init>()V

    const-string v0, "\u4e0d\u660e"

    .line 362
    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hW:Ljava/lang/String;

    .line 378
    new-instance v0, Lcom/picacomic/fregata/activities/ComicViewerActivity$1;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$1;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ih:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 2038
    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ii:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public a(Lcom/picacomic/fregata/a/c;)V
    .locals 0

    .line 1594
    iput-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hz:Lcom/picacomic/fregata/a/c;

    return-void
.end method

.method public b(IIZ)V
    .locals 1

    .line 1182
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1183
    invoke-virtual {p0, p1, p2, p3}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->c(IIZ)V

    goto :goto_0

    .line 1185
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->d(IIZ)V

    :goto_0
    return-void
.end method

.method public bF()V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ig:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ig:Ljava/util/ArrayList;

    .line 526
    :cond_0
    new-instance v0, Lcom/picacomic/fregata/adapters/c;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ig:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/picacomic/fregata/adapters/c;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hA:Lcom/picacomic/fregata/adapters/c;

    .line 527
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->gridView_episodeDialog:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hA:Lcom/picacomic/fregata/adapters/c;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 528
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->gridView_episodeDialog:Landroid/widget/GridView;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$12;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$12;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 548
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->gridView_episodeDialog:Landroid/widget/GridView;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$23;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$23;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 576
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->imageButton_back:Landroid/widget/ImageButton;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$26;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$26;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_hint:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$27;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$27;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_share:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$28;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$28;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_download:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$29;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$29;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_screenOrientation:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$30;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$30;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_scrollOrientation:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$31;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$31;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_autoPaging:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$2;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$2;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_dialogAutoPagingStart:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$3;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$3;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_setting:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$4;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$4;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_hide:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$5;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$5;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_selectEpisode:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$6;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$6;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nightMode:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$7;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$7;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_comment:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$8;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$8;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 749
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->checkBox_brightnessSystem:Landroid/widget/CheckBox;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$9;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$9;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 756
    new-instance v0, Lcom/picacomic/fregata/activities/ComicViewerActivity$10;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$10;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ib:Landroid/view/View$OnClickListener;

    .line 767
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ib:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panelLeftCorner:Landroid/widget/Button;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ib:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->verticalSeekBar_brightness:Lcom/picacomic/fregata/utils/views/VerticalSeekBar;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$11;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$11;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Lcom/picacomic/fregata/utils/views/VerticalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 788
    new-instance v0, Lcom/picacomic/fregata/activities/ComicViewerActivity$13;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$13;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ie:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 824
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->seekBar_horizontalPaging:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ie:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 826
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->seekBar_verticalPaging:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ie:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 828
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->seekBar_dialogAutoPaging:Landroid/widget/SeekBar;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$14;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$14;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 848
    new-instance v0, Lcom/picacomic/fregata/activities/ComicViewerActivity$15;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$15;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ic:Landroid/view/View$OnClickListener;

    .line 856
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextPageBottom:Landroid/widget/Button;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ic:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 857
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextPageRight:Landroid/widget/Button;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ic:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 859
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextEpisode:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$16;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$16;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_previousEpisode:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$17;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$17;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_previousPage:Landroid/widget/Button;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$18;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$18;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 899
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->frameLayout_gestureArea:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$19;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$19;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bG()V
    .locals 2

    const/4 v0, 0x0

    .line 911
    iput v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    .line 912
    iput v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hF:I

    const/4 v1, 0x1

    .line 913
    iput v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hG:I

    .line 914
    iput v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hP:I

    .line 915
    iput-boolean v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hS:Z

    .line 916
    iput-boolean v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hQ:Z

    .line 917
    iput-boolean v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hU:Z

    return-void
.end method

.method public bH()V
    .locals 4

    const/16 v0, 0x8

    .line 928
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->k(I)V

    .line 930
    iget-boolean v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hB:Z

    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->h(Z)V

    .line 931
    iget-boolean v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hC:Z

    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->i(Z)V

    .line 932
    iget-boolean v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hE:Z

    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->k(Z)V

    .line 933
    iget v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hM:I

    add-int/lit16 v1, v1, -0x3e8

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 934
    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->seekBar_dialogAutoPaging:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 936
    :cond_0
    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->seekBar_dialogAutoPaging:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hM:I

    add-int/lit16 v3, v3, -0x3e8

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 940
    :goto_0
    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->K(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 941
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->k(I)V

    .line 942
    invoke-virtual {p0, v2}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->l(I)V

    goto :goto_1

    .line 944
    :cond_1
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->k(I)V

    const/4 v0, 0x4

    .line 945
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->l(I)V

    :goto_1
    return-void
.end method

.method public bI()V
    .locals 5

    const/16 v0, 0x8

    .line 991
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->p(I)V

    .line 992
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->q(I)V

    .line 993
    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->n(I)V

    .line 996
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hK:Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->textView_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3016"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hK:Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u3017 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hL:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1000
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1002
    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->textView_title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bJ()V
    .locals 4

    .line 1007
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.WRITE_SETTINGS"

    .line 1009
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1011
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_SETTINGS"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x7d1

    invoke-static {p0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const-string v1, "android.permission.WRITE_SETTINGS"

    .line 1016
    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "To "

    .line 1020
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1031
    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_SETTINGS"

    aput-object v1, v0, v3

    invoke-static {p0, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bK()V
    .locals 1

    const v0, 0x7f010010

    .line 1040
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hr:Landroid/view/animation/Animation;

    const v0, 0x7f010011

    .line 1041
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hs:Landroid/view/animation/Animation;

    const v0, 0x7f010012

    .line 1043
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ht:Landroid/view/animation/Animation;

    const v0, 0x7f010013

    .line 1044
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hu:Landroid/view/animation/Animation;

    const v0, 0x7f010014

    .line 1046
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hv:Landroid/view/animation/Animation;

    const v0, 0x7f010015

    .line 1047
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hw:Landroid/view/animation/Animation;

    const v0, 0x7f01000e

    .line 1049
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hx:Landroid/view/animation/Animation;

    const v0, 0x7f01000f

    .line 1050
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hy:Landroid/view/animation/Animation;

    return-void
.end method

.method public bL()V
    .locals 3

    .line 1170
    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->j(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1171
    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    iget v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hF:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->c(IIZ)V

    goto :goto_0

    .line 1173
    :cond_0
    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    iget v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hF:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->d(IIZ)V

    :goto_0
    return-void
.end method

.method public bM()V
    .locals 5

    .line 1413
    sget-object v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    const-string v1, "Call Comic Page ?"

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bT()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hR:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1417
    iput-boolean v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hR:Z

    .line 1419
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->C(Ljava/lang/String;)V

    .line 1421
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 1423
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->comicId:Ljava/lang/String;

    iget v3, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bT()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/picacomic/fregata/b/a;->a(Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hZ:Lretrofit2/Call;

    .line 1425
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hZ:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$21;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_0
    return-void
.end method

.method public bN()V
    .locals 4

    .line 1491
    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hI:I

    iget v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hJ:I

    if-ge v0, v1, :cond_0

    .line 1495
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bA()V

    .line 1497
    new-instance v0, Lcom/picacomic/fregata/b/d;

    invoke-direct {v0, p0}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 1499
    invoke-virtual {v0}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->comicId:Ljava/lang/String;

    iget v3, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hI:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/picacomic/fregata/b/a;->b(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ia:Lretrofit2/Call;

    .line 1501
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ia:Lretrofit2/Call;

    new-instance v1, Lcom/picacomic/fregata/activities/ComicViewerActivity$22;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$22;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_0
    return-void
.end method

.method public bO()V
    .locals 7

    .line 1754
    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hM:I

    if-lez v0, :cond_0

    .line 1756
    new-instance v0, Lcom/picacomic/fregata/activities/ComicViewerActivity$24;

    iget v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hM:I

    int-to-long v3, v1

    iget v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hM:I

    int-to-long v5, v1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/picacomic/fregata/activities/ComicViewerActivity$24;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;JJ)V

    .line 1779
    invoke-virtual {v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$24;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hX:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public bP()V
    .locals 1

    .line 1788
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hX:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1789
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hX:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 1790
    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hX:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public bQ()V
    .locals 7

    .line 1943
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hY:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1944
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hY:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1946
    :cond_0
    new-instance v0, Lcom/picacomic/fregata/activities/ComicViewerActivity$25;

    const-wide/16 v3, 0x7d0

    const-wide/16 v5, 0x7d0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/picacomic/fregata/activities/ComicViewerActivity$25;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;JJ)V

    .line 1959
    invoke-virtual {v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity$25;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hY:Landroid/os/CountDownTimer;

    return-void
.end method

.method public bR()V
    .locals 3

    .line 2008
    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->if:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/g;->ad(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2009
    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    .line 2010
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hz:Lcom/picacomic/fregata/a/c;

    iget v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/picacomic/fregata/a/c;->b(IZ)V

    .line 2011
    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->r(I)V

    :cond_0
    return-void
.end method

.method public bS()V
    .locals 3

    .line 2016
    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    if-lez v0, :cond_0

    .line 2017
    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    .line 2018
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hz:Lcom/picacomic/fregata/a/c;

    iget v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/picacomic/fregata/a/c;->b(IZ)V

    .line 2019
    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->r(I)V

    :cond_0
    return-void
.end method

.method public bT()I
    .locals 2

    .line 2024
    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hP:I

    sget v1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    div-int/2addr v0, v1

    return v0
.end method

.method public bU()I
    .locals 2

    .line 2029
    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hP:I

    sget v1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    div-int/2addr v0, v1

    sget v1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    mul-int v0, v0, v1

    return v0
.end method

.method public declared-synchronized c(IIZ)V
    .locals 7

    monitor-enter p0

    if-eqz p3, :cond_0

    .line 1192
    :try_start_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bG()V

    .line 1193
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->if:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 1197
    :cond_0
    :goto_0
    const-class v0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;

    const-string v1, "comic_id = ? and episode_order = ?"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->comicId:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v3}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->find(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1198
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 1199
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->getComicEpisodeObject()Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    move-result-object v0

    iput-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hK:Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    .line 1200
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;

    invoke-virtual {p1}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->getTotal()I

    move-result p1

    iput p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hH:I

    .line 1203
    iget p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hH:I

    sget v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    if-ge p1, v0, :cond_1

    .line 1204
    iput v4, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hG:I

    goto :goto_1

    .line 1205
    :cond_1
    iget p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hH:I

    sget v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_2

    .line 1206
    iget p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hH:I

    sget v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    div-int/2addr p1, v0

    iput p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hG:I

    goto :goto_1

    .line 1208
    :cond_2
    iget p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hH:I

    sget v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    div-int/2addr p1, v0

    add-int/2addr p1, v4

    iput p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hG:I

    :goto_1
    const/4 p1, 0x0

    .line 1213
    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hG:I

    if-le v0, p2, :cond_3

    .line 1221
    const-class p1, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;

    const-string v0, "SELECT * FROM download_comic_page_object WHERE episode_id = ? LIMIT ? OFFSET ?"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hK:Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {v3}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getEpisodeId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    mul-int v6, v6, p2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->findWithQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1222
    sget-object v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIZE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "LIMIT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " OFFSET = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hq:I

    mul-int v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr p2, v4

    .line 1223
    iput p2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hF:I

    .line 1226
    :cond_3
    iget-object p2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->if:Ljava/util/ArrayList;

    if-nez p2, :cond_4

    .line 1227
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->if:Ljava/util/ArrayList;

    :cond_4
    if-eqz p1, :cond_7

    .line 1230
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_7

    .line 1231
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 1232
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1233
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicPageObject;->getComicPageObject()Lcom/picacomic/fregata/objects/ComicPageObject;

    move-result-object v1

    .line 1234
    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->if:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1238
    :cond_5
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hz:Lcom/picacomic/fregata/a/c;

    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hP:I

    iget-boolean v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hU:Z

    invoke-interface {p1, p2, v0, v1, p3}, Lcom/picacomic/fregata/a/c;->a(Ljava/util/ArrayList;IZZ)V

    .line 1240
    iget-boolean p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hU:Z

    if-eqz p1, :cond_6

    .line 1241
    iput-boolean v5, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hU:Z

    .line 1245
    :cond_6
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->if:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->o(I)V

    .line 1248
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bI()V

    goto :goto_3

    .line 1250
    :cond_7
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    const-string p2, "Load DownloadComicPageObjectList DB FAILED"

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1252
    :cond_8
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    const-string p2, "Load DownloadComicEpisodeObject DB FAILED"

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    :goto_3
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "current Page = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Comic Paging Page = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hF:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Comic Paging Page Total = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hG:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "jumpingPage = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hP:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "episodeOrder = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "episodeTotal = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeTotal:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "episodePagingPage = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hI:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "episodePagingPageTotal = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hJ:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1283
    monitor-exit p0

    return-void

    .line 1190
    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public d(IIZ)V
    .locals 5

    .line 1290
    sget-object v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    const-string v1, "Call Comic Page ?"

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hG:I

    if-ge p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hR:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1301
    iput-boolean v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hR:Z

    .line 1303
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->C(Ljava/lang/String;)V

    .line 1305
    new-instance v1, Lcom/picacomic/fregata/b/d;

    invoke-direct {v1, p0}, Lcom/picacomic/fregata/b/d;-><init>(Landroid/content/Context;)V

    .line 1307
    sget-object v2, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call Page api = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->comicId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p2, v0

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v1}, Lcom/picacomic/fregata/b/d;->dO()Lcom/picacomic/fregata/b/a;

    move-result-object v0

    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->comicId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/picacomic/fregata/b/a;->a(Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hZ:Lretrofit2/Call;

    .line 1311
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hZ:Lretrofit2/Call;

    new-instance p2, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;

    invoke-direct {p2, p0, p3}, Lcom/picacomic/fregata/activities/ComicViewerActivity$20;-><init>(Lcom/picacomic/fregata/activities/ComicViewerActivity;Z)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 1

    .line 1553
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hz:Lcom/picacomic/fregata/a/c;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x6

    .line 1555
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->setRequestedOrientation(I)V

    .line 1556
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hz:Lcom/picacomic/fregata/a/c;

    if-eqz v0, :cond_1

    .line 1557
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hz:Lcom/picacomic/fregata/a/c;

    invoke-interface {v0, p1}, Lcom/picacomic/fregata/a/c;->M(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    .line 1561
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->setRequestedOrientation(I)V

    .line 1562
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hz:Lcom/picacomic/fregata/a/c;

    if-eqz v0, :cond_1

    .line 1563
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hz:Lcom/picacomic/fregata/a/c;

    invoke-interface {v0, p1}, Lcom/picacomic/fregata/a/c;->M(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i(Z)V
    .locals 2

    .line 1572
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hz:Lcom/picacomic/fregata/a/c;

    if-eqz v0, :cond_1

    .line 1573
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hz:Lcom/picacomic/fregata/a/c;

    invoke-interface {v0, p1}, Lcom/picacomic/fregata/a/c;->B(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1576
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0800c1

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1577
    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_scrollOrientation:Landroid/widget/Button;

    invoke-virtual {v1, v0, p1, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1579
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0800c2

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1580
    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_scrollOrientation:Landroid/widget/Button;

    invoke-virtual {v1, v0, p1, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public init()V
    .locals 4

    .line 464
    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->Q(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hT:Z

    .line 465
    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->M(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hB:Z

    .line 466
    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->N(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hC:Z

    .line 467
    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->L(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hE:Z

    .line 468
    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->O(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hM:I

    const/4 v0, 0x0

    .line 470
    iput-boolean v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hQ:Z

    .line 471
    iput-boolean v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hR:Z

    .line 472
    iput-boolean v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hS:Z

    .line 473
    iput v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hF:I

    const/4 v1, 0x1

    .line 474
    iput v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hG:I

    .line 475
    iput v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hI:I

    .line 476
    iput v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hJ:I

    .line 477
    iput v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hP:I

    .line 478
    iput-boolean v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hU:Z

    .line 479
    iput-boolean v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hV:Z

    .line 481
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_KEY_COMIC_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->comicId:Ljava/lang/String;

    .line 482
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_KEY_COMIC_TITLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hL:Ljava/lang/String;

    .line 484
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_KEY_LAST_VIEW_EPISODE_ORDER"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    .line 485
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_KEY_EPISODE_TOTAL"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeTotal:I

    .line 486
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_KEY_LAST_VIEW_PAGE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    .line 487
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_KEY_VIEW_FROM_RECORD"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v2, 0x8

    .line 489
    iput v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hN:I

    .line 491
    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->comicId:Ljava/lang/String;

    invoke-static {v2}, Lcom/picacomic/fregata/utils/b;->ax(Ljava/lang/String;)Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getPage()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hP:I

    .line 494
    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getEpisodeOrder()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    .line 495
    invoke-virtual {v2}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;->getEpisodeTotal()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeTotal:I

    .line 497
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bT()I

    move-result v0

    iput v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hF:I

    .line 498
    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hF:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hG:I

    .line 501
    iput-boolean v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hU:Z

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bK()V

    .line 519
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bJ()V

    return-void
.end method

.method public j(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1706
    :try_start_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1707
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->checkBox_brightnessSystem:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0107

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 1709
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1710
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->checkBox_brightnessSystem:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1713
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1716
    :goto_1
    iput-boolean p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hD:Z

    return-void
.end method

.method public j(I)Z
    .locals 5

    .line 1158
    const-class v0, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;

    const-string v1, "comic_id = ? and episode_order = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->comicId:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/picacomic/fregata/objects/databaseTable/DownloadComicEpisodeObject;->find(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1159
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1160
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    const-string v0, "HAVE DOWNLOAD EP"

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 1163
    :cond_0
    sget-object p1, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    const-string v0, "NO DOWNLOAD EP"

    invoke-static {p1, v0}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public k(I)V
    .locals 2

    .line 1603
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bK()V

    .line 1605
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->relativeLayout_leftPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1606
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_rightPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1607
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->relativeLayout_toolbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1608
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_bottomPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v0, 0x8

    if-nez p1, :cond_1

    .line 1611
    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1617
    :cond_0
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->relativeLayout_leftPanel:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hr:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1618
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_rightPanel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ht:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1619
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->relativeLayout_toolbar:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hv:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1620
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_bottomPanel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hx:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1622
    :goto_0
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->l(I)V

    goto :goto_2

    .line 1624
    :cond_1
    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->x(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 1627
    :cond_2
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->relativeLayout_leftPanel:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hs:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1628
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_rightPanel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hu:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1629
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->relativeLayout_toolbar:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hw:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1630
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_bottomPanel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hy:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1632
    :goto_1
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->gridView_episodeDialog:Landroid/widget/GridView;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1633
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_dialogAutoPaging:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x4

    .line 1634
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->l(I)V

    :goto_2
    return-void
.end method

.method public k(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1737
    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->frameLayout_nightModeMask:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1738
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0800da

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1739
    iget-object v3, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nightMode:Landroid/widget/Button;

    invoke-virtual {v3, v0, v1, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1740
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nightMode:Landroid/widget/Button;

    const v1, 0x7f060038

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const v0, 0x7f0f011d

    .line 1741
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1743
    :cond_0
    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->frameLayout_nightModeMask:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1744
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800c5

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1745
    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nightMode:Landroid/widget/Button;

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1746
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nightMode:Landroid/widget/Button;

    const v1, 0x7f0600a3

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1748
    :goto_0
    iput-boolean p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hE:Z

    .line 1749
    iget-boolean p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hE:Z

    invoke-static {p0, p1}, Lcom/picacomic/fregata/utils/e;->d(Landroid/content/Context;Z)Z

    return-void
.end method

.method public l(I)V
    .locals 4

    const v0, 0x7f06009e

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    .line 1645
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextPageRight:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1646
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextPageBottom:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1647
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_previousPage:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1648
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panel:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1649
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panelLeftCorner:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1650
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextPageRight:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1651
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextPageBottom:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1652
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_previousPage:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1653
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panel:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1654
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panelLeftCorner:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1655
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextPageRight:Landroid/widget/Button;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1656
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextPageBottom:Landroid/widget/Button;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1657
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_previousPage:Landroid/widget/Button;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1658
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panel:Landroid/widget/Button;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1659
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panelLeftCorner:Landroid/widget/Button;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1660
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->frameLayout_gestureArea:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 1664
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextPageRight:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1665
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextPageBottom:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1666
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_previousPage:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1667
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panel:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1668
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panelLeftCorner:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1669
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panel:Landroid/widget/Button;

    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1670
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panelLeftCorner:Landroid/widget/Button;

    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1671
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panel:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1672
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panelLeftCorner:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1673
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->frameLayout_gestureArea:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 1677
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextPageRight:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1678
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextPageBottom:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1679
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_previousPage:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1680
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panel:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1681
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panelLeftCorner:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1682
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextPageRight:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1683
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextPageBottom:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1684
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_previousPage:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1685
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panel:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1686
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panelLeftCorner:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1687
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextPageRight:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1688
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextPageBottom:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1689
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_previousPage:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1690
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panel:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1691
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_panelLeftCorner:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1692
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->frameLayout_gestureArea:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public m(I)V
    .locals 2

    .line 1722
    :try_start_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1723
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->checkBox_brightnessSystem:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1725
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1727
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1730
    :goto_0
    iput p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hO:I

    return-void
.end method

.method public n(I)V
    .locals 9

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "connectivity"

    .line 1865
    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 1867
    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 1868
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    .line 1870
    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1871
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    .line 1873
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " net "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    const v3, 0x7f0f0173

    .line 1878
    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    const v3, 0x7f0f0174

    .line 1883
    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    :cond_1
    if-eqz v4, :cond_2

    const v3, 0x7f0f0172

    .line 1888
    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1889
    :try_start_1
    iget-boolean v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hV:Z

    if-eqz v0, :cond_3

    .line 1890
    invoke-static {p0}, Lcom/picacomic/fregata/utils/views/AlertDialogCenter;->usingMobileNetwork(Landroid/content/Context;)V

    .line 1891
    iput-boolean v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hV:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    goto :goto_1

    :cond_2
    move-object v3, v0

    :cond_3
    :goto_0
    move-object v0, v3

    goto :goto_2

    :catch_1
    move-exception v3

    .line 1898
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "Cannot get NetworkInfo"

    .line 1900
    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1905
    :goto_2
    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->if:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 1907
    iget v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hH:I

    .line 1909
    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->ac(I)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->if:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 1911
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->textView_horizontalPage:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5b8c/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1912
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->textView_verticalPage:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5b8c/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1913
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->textView_page:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5b8c/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u96fb\u91cf:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hW:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1915
    :cond_4
    iget-object v3, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->textView_horizontalPage:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->ac(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bU()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1916
    iget-object v3, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->textView_verticalPage:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->ac(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bU()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1917
    iget-object v3, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->textView_page:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "P."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->ac(I)I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bU()I

    move-result v2

    add-int/2addr p1, v2

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u96fb\u91cf:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hW:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public o(I)V
    .locals 1

    .line 1924
    invoke-static {p1}, Lcom/picacomic/fregata/utils/g;->ad(I)I

    move-result p1

    .line 1925
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->seekBar_verticalPaging:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1926
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->seekBar_horizontalPaging:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1818
    invoke-super {p0, p1}, Lcom/picacomic/fregata/activities/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1820
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 1821
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_horizontalPagingScrollbar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1822
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_verticalPagingScrollbar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1824
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1825
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_horizontalPagingScrollbar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1826
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->linearLayout_verticalPagingScrollbar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 396
    invoke-super {p0, p1}, Lcom/picacomic/fregata/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001b

    .line 397
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->setContentView(I)V

    .line 398
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    const v0, 0x7f09030d

    .line 400
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 401
    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    if-nez p1, :cond_1

    .line 405
    invoke-static {p0}, Lcom/picacomic/fregata/utils/e;->w(Landroid/content/Context;)Z

    move-result p1

    const v0, 0x7f0900ab

    if-eqz p1, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;

    invoke-direct {v1}, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;-><init>()V

    sget-object v2, Lcom/picacomic/fregata/fragments/ComicViewerListFragment;->TAG:Ljava/lang/String;

    .line 407
    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 408
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    new-instance v1, Lcom/picacomic/fregata/fragments/ComicViewFragment;

    invoke-direct {v1}, Lcom/picacomic/fregata/fragments/ComicViewFragment;-><init>()V

    sget-object v2, Lcom/picacomic/fregata/fragments/ComicViewFragment;->TAG:Ljava/lang/String;

    .line 411
    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 412
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 416
    :goto_0
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->init()V

    .line 417
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bF()V

    .line 418
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bH()V

    goto :goto_1

    .line 423
    :cond_1
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->finish()V

    :goto_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1796
    iget-boolean p2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hT:Z

    if-eqz p2, :cond_1

    const/16 p2, 0x19

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 1799
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bR()V

    return v0

    :cond_0
    const/16 p2, 0x18

    if-ne p1, p2, :cond_1

    .line 1803
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bS()V

    return v0

    :cond_1
    const/4 p2, 0x4

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    .line 1809
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->onBackPressed()V

    return v0

    :cond_2
    return v0
.end method

.method protected onPause()V
    .locals 9

    .line 1069
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hK:Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hK:Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hK:Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 1071
    new-instance v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->comicId:Ljava/lang/String;

    iget v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bU()I

    move-result v3

    add-int/2addr v3, v1

    iget v5, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    iget v6, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeTotal:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;-><init>(Ljava/lang/String;ILjava/lang/String;IIJ)V

    invoke-static {v0}, Lcom/picacomic/fregata/utils/b;->a(Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;)Z

    .line 1075
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ih:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ih:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1078
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1081
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 p2, 0x7d1

    if-eq p1, p2, :cond_0

    return-void

    .line 1836
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1055
    invoke-super {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->onResume()V

    .line 1056
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bK()V

    .line 1058
    :try_start_0
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ih:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ih:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1061
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, ""

    .line 1092
    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hK:Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hK:Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {v1}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hK:Lcom/picacomic/fregata/objects/ComicEpisodeObject;

    invoke-virtual {v0}, Lcom/picacomic/fregata/objects/ComicEpisodeObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v4, v0

    .line 1095
    new-instance v0, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;

    iget-object v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->comicId:Ljava/lang/String;

    iget v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bU()I

    move-result v3

    add-int/2addr v3, v1

    iget v5, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeOrder:I

    iget v6, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->episodeTotal:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;-><init>(Ljava/lang/String;ILjava/lang/String;IIJ)V

    invoke-static {v0}, Lcom/picacomic/fregata/utils/b;->a(Lcom/picacomic/fregata/objects/databaseTable/DbComicViewRecordObject;)Z

    .line 1096
    sget-object v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    const-string v1, "Save View Record: "

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-super {p0, p1}, Lcom/picacomic/fregata/activities/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1103
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bP()V

    .line 1104
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hZ:Lretrofit2/Call;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hZ:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ia:Lretrofit2/Call;

    if-eqz v0, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ia:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 1109
    :cond_1
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hx:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    .line 1110
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hx:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1112
    :cond_2
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hy:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    .line 1113
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hy:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1116
    :cond_3
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hr:Landroid/view/animation/Animation;

    if-eqz v0, :cond_4

    .line 1117
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hr:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1119
    :cond_4
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hs:Landroid/view/animation/Animation;

    if-eqz v0, :cond_5

    .line 1120
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hs:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1123
    :cond_5
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ht:Landroid/view/animation/Animation;

    if-eqz v0, :cond_6

    .line 1124
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->ht:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1127
    :cond_6
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hu:Landroid/view/animation/Animation;

    if-eqz v0, :cond_7

    .line 1128
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hu:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1131
    :cond_7
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hv:Landroid/view/animation/Animation;

    if-eqz v0, :cond_8

    .line 1132
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hv:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1135
    :cond_8
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hw:Landroid/view/animation/Animation;

    if-eqz v0, :cond_9

    .line 1136
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hw:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1139
    :cond_9
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hY:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_a

    .line 1140
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hY:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1143
    :cond_a
    invoke-super {p0}, Lcom/picacomic/fregata/activities/BaseActivity;->onStop()V

    return-void
.end method

.method public p(I)V
    .locals 1

    .line 1931
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextEpisode:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1932
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_nextEpisode:Landroid/widget/Button;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 1933
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bQ()V

    return-void
.end method

.method public q(I)V
    .locals 1

    .line 1937
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_previousEpisode:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1938
    iget-object p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->button_previousEpisode:Landroid/widget/Button;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 1939
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bQ()V

    return-void
.end method

.method public r(I)V
    .locals 4

    .line 1969
    sget-object v0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Page = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pageNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/picacomic/fregata/utils/f;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->if:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1974
    iget-boolean v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hB:Z

    if-eqz v0, :cond_0

    .line 1975
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->seekBar_verticalPaging:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 1977
    :cond_0
    iget-object v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->seekBar_horizontalPaging:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1978
    :goto_0
    invoke-virtual {p0, p1}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->n(I)V

    .line 1979
    iput p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    .line 1981
    iget-boolean v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hQ:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 1982
    iput-boolean v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hQ:Z

    .line 1985
    :cond_1
    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->currentPage:I

    iget-object v1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->if:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Lcom/picacomic/fregata/utils/g;->ad(I)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_2

    .line 1986
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bL()V

    .line 1987
    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->q(I)V

    .line 1988
    iget p1, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hF:I

    iget v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hG:I

    if-ne p1, v0, :cond_5

    .line 1989
    invoke-virtual {p0, v2}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->p(I)V

    goto :goto_1

    .line 1992
    :cond_2
    iget-boolean v0, p0, Lcom/picacomic/fregata/activities/ComicViewerActivity;->hQ:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    .line 1993
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bT()I

    move-result p1

    if-lez p1, :cond_3

    .line 1994
    invoke-virtual {p0}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->bM()V

    goto :goto_1

    .line 1996
    :cond_3
    invoke-virtual {p0, v2}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->q(I)V

    .line 1997
    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->p(I)V

    goto :goto_1

    .line 2001
    :cond_4
    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->q(I)V

    .line 2002
    invoke-virtual {p0, v3}, Lcom/picacomic/fregata/activities/ComicViewerActivity;->p(I)V

    :cond_5
    :goto_1
    return-void
.end method
