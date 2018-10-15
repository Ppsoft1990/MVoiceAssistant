.class public Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;
.super Lcom/iflytek/yd/ui/BaseFragment;
.source "CallPatternSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBroadcastAudition:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private mCallContactEmptyView:Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;

.field private mCallNameEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

.field private mContactFormatOperator:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;

.field private mContenTextView:Lcom/iflytek/base/skin/customView/XTextView;

.field private mContentString:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mITtsListener:Lju;

.field private mInputDelBtn:Lcom/iflytek/base/skin/customView/XImageView;

.field private mNameKey:Ljava/lang/String;

.field private mNameString:Ljava/lang/String;

.field private mNameTitleEditText:Lcom/iflytek/base/skin/customView/XEditText;

.field private mParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSpeechService:Lpp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/iflytek/yd/ui/BaseFragment;-><init>()V

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->TAG:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mCallNameEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    .line 50
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mCallContactEmptyView:Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;

    .line 51
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContactFormatOperator:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;

    .line 440
    new-instance v0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$6;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$6;-><init>(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mITtsListener:Lju;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Lpp;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mSpeechService:Lpp;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mNameString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mNameString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContentString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Lju;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mITtsListener:Lju;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Lcom/iflytek/base/skin/customView/XEditText;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mNameTitleEditText:Lcom/iflytek/base/skin/customView/XEditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->saveName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Lcom/iflytek/base/skin/customView/XImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mInputDelBtn:Lcom/iflytek/base/skin/customView/XImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->saveContent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addChildren()V
    .locals 6

    .prologue
    .line 213
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mCallNameEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mCallNameEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mCallNameEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    const v1, 0x7f0c0024

    .line 217
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->setText(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mCallNameEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->addView(Lcom/iflytek/base/skin/customView/XLinearLayout;Lcom/iflytek/viafly/settings/custompreferences/XPreference;)Z

    .line 220
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300ae

    const/4 v3, 0x0

    .line 221
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 220
    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->addView(Lcom/iflytek/base/skin/customView/XLinearLayout;Landroid/view/View;)Z

    .line 224
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mCallContactEmptyView:Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;

    if-nez v0, :cond_1

    .line 225
    new-instance v0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mCallContactEmptyView:Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mCallContactEmptyView:Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;

    const v1, 0x7f0c0023

    .line 228
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;->setText(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mCallContactEmptyView:Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->addView(Lcom/iflytek/base/skin/customView/XLinearLayout;Lcom/iflytek/viafly/settings/custompreferences/XPreference;)Z

    .line 231
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContactFormatOperator:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;

    if-nez v0, :cond_2

    .line 232
    new-instance v0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 233
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f09001c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_NOTIFY_CALL_PATTERN"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;-><init>(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;Lcom/iflytek/base/skin/customView/XLinearLayout;Landroid/widget/LinearLayout$LayoutParams;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContactFormatOperator:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContactFormatOperator:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;->loadData(Landroid/content/Context;)V

    .line 239
    return-void
.end method

.method private addView(Lcom/iflytek/base/skin/customView/XLinearLayout;Landroid/view/View;)Z
    .locals 1
    .param p1, "pRootView"    # Lcom/iflytek/base/skin/customView/XLinearLayout;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 286
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 287
    :cond_0
    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, p2, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private addView(Lcom/iflytek/base/skin/customView/XLinearLayout;Lcom/iflytek/viafly/settings/custompreferences/XPreference;)Z
    .locals 2
    .param p1, "pRootView"    # Lcom/iflytek/base/skin/customView/XLinearLayout;
    .param p2, "pre"    # Lcom/iflytek/viafly/settings/custompreferences/XPreference;

    .prologue
    .line 277
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 278
    :cond_0
    const/4 v0, 0x0

    .line 281
    :goto_0
    return v0

    .line 280
    :cond_1
    invoke-virtual {p2}, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private saveContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContentString:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContenTextView:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContenTextView:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContentString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_0
    return-void
.end method

.method private saveName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mNameKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method


# virtual methods
.method protected isUploadedLog()Z
    .locals 3

    .prologue
    .line 246
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NOTIFY_CALL_PATTERN_NAME_USED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/yd/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    .line 69
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContext:Landroid/content/Context;

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/yd/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v1

    .line 72
    .local v1, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 73
    new-instance v2, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 74
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 76
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 78
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v2, v0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 84
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->addChildren()V

    .line 86
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 87
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->addContentView(Landroid/view/View;)V

    .line 88
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 311
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onDestroy()V

    .line 312
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mSpeechService:Lpp;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mSpeechService:Lpp;

    invoke-virtual {v0}, Lpp;->c()V

    .line 316
    :cond_0
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mSpeechService:Lpp;

    .line 317
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mCallNameEmptyView:Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    .line 318
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mCallContactEmptyView:Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;

    .line 319
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContactFormatOperator:Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$RadioButtonList;

    .line 320
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContext:Landroid/content/Context;

    .line 321
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mBroadcastAudition:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 322
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mRootViewLayout:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 323
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 324
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 325
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mInputDelBtn:Lcom/iflytek/base/skin/customView/XImageView;

    .line 326
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mNameTitleEditText:Lcom/iflytek/base/skin/customView/XEditText;

    .line 327
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mNameKey:Ljava/lang/String;

    .line 328
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mNameString:Ljava/lang/String;

    .line 329
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContentString:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onPause()V

    .line 298
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mNameTitleEditText:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 299
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onStart()V

    .line 206
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onStop()V

    .line 304
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mSpeechService:Lpp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mSpeechService:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mITtsListener:Lju;

    invoke-virtual {v0, v1}, Lpp;->d(Lju;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mSpeechService:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mITtsListener:Lju;

    invoke-virtual {v0, v1}, Lpp;->c(Lju;)V

    .line 307
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x2

    .line 93
    invoke-super {p0, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 96
    const v2, 0x7f0c0045

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->setTitleText(Ljava/lang/CharSequence;)V

    .line 97
    const-string/jumbo v2, "style_settings_title_new"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->setTitleStyle(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v2, "statelist.fluepage_title_back_btn_states"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->setBackBtnResource(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 103
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 104
    .local v1, "titleView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 105
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 107
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0x60

    invoke-static {v5, v6}, Lazk;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .end local v1    # "titleView":Landroid/widget/TextView;
    :cond_1
    const-string/jumbo v2, "com.iflytek.cmccIFLY_NOTIFY_CALL_PATTERN_NAME"

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mNameKey:Ljava/lang/String;

    .line 115
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mNameKey:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mNameString:Ljava/lang/String;

    .line 116
    new-instance v2, Lpp;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mSpeechService:Lpp;

    .line 119
    const v2, 0x7f0b0492

    .line 120
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mBroadcastAudition:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 121
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mBroadcastAudition:Lcom/iflytek/base/skin/customView/XLinearLayout;

    new-instance v3, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$1;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$1;-><init>(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v2, 0x7f0b0490

    .line 133
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mInputDelBtn:Lcom/iflytek/base/skin/customView/XImageView;

    .line 134
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mInputDelBtn:Lcom/iflytek/base/skin/customView/XImageView;

    new-instance v3, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$2;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$2;-><init>(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mNameString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 142
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mInputDelBtn:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 147
    :goto_0
    const v2, 0x7f0b048f

    .line 148
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XEditText;

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mNameTitleEditText:Lcom/iflytek/base/skin/customView/XEditText;

    .line 149
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mNameTitleEditText:Lcom/iflytek/base/skin/customView/XEditText;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mNameString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XEditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mNameTitleEditText:Lcom/iflytek/base/skin/customView/XEditText;

    new-instance v3, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$3;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$3;-><init>(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mNameTitleEditText:Lcom/iflytek/base/skin/customView/XEditText;

    new-instance v3, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$4;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$4;-><init>(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 186
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mNameTitleEditText:Lcom/iflytek/base/skin/customView/XEditText;

    new-instance v3, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$5;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment$5;-><init>(Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    const v2, 0x7f0b0491

    .line 199
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContenTextView:Lcom/iflytek/base/skin/customView/XTextView;

    .line 200
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContenTextView:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mContentString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    return-void

    .line 144
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;->mInputDelBtn:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateUploadedLog()V
    .locals 3

    .prologue
    .line 256
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NOTIFY_CALL_PATTERN_NAME_USED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 258
    return-void
.end method
