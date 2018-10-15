.class public Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;
.super Landroid/widget/RelativeLayout;
.source "NoviceGuideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/dialog/NoviceGuideView$ClickListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mGuideCurrent:I


# instance fields
.field private final GUIDE_MIC:I

.field private final GUIDE_STATUS_BAR:I

.field private final GUIDE_TOOL:I

.field private final GUIDE_VOICE_PACKAGE:I

.field private mContext:Landroid/content/Context;

.field private mMicGuide:Landroid/widget/RelativeLayout;

.field private mMicOk:Landroid/widget/Button;

.field private mStatusBarGuide:Landroid/widget/RelativeLayout;

.field private mStatusBarOk:Landroid/widget/Button;

.field private mToolGuide:Landroid/widget/RelativeLayout;

.field private mToolOk:Landroid/widget/Button;

.field private mVoicePackageGuide:Landroid/widget/RelativeLayout;

.field private mVoicePackageOk:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "NoviceGuideDialog"

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput v1, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->GUIDE_STATUS_BAR:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->GUIDE_VOICE_PACKAGE:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->GUIDE_MIC:I

    .line 35
    const/4 v0, 0x4

    iput v0, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->GUIDE_TOOL:I

    .line 42
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mContext:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->initView()V

    .line 44
    sput v1, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mGuideCurrent:I

    .line 45
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mGuideCurrent:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 17
    sput p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mGuideCurrent:I

    return p0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mStatusBarGuide:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mVoicePackageGuide:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mMicGuide:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mToolGuide:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 48
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030162

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->addView(Landroid/view/View;)V

    .line 51
    const v2, 0x7f0b07eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mStatusBarGuide:Landroid/widget/RelativeLayout;

    .line 52
    const v2, 0x7f0b07ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mVoicePackageGuide:Landroid/widget/RelativeLayout;

    .line 53
    const v2, 0x7f0b07f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mMicGuide:Landroid/widget/RelativeLayout;

    .line 54
    const v2, 0x7f0b07f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mToolGuide:Landroid/widget/RelativeLayout;

    .line 56
    const v2, 0x7f0b07ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mStatusBarOk:Landroid/widget/Button;

    .line 57
    const v2, 0x7f0b07f1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mVoicePackageOk:Landroid/widget/Button;

    .line 58
    const v2, 0x7f0b07f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mMicOk:Landroid/widget/Button;

    .line 59
    const v2, 0x7f0b07f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mToolOk:Landroid/widget/Button;

    .line 61
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView$ClickListener;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView$ClickListener;-><init>(Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;)V

    .line 62
    .local v0, "mClickListener":Lcom/iflytek/viafly/ui/dialog/NoviceGuideView$ClickListener;
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mStatusBarOk:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mVoicePackageOk:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mMicOk:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/NoviceGuideView;->mToolOk:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method
