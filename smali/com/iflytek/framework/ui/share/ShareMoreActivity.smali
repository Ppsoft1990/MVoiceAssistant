.class public Lcom/iflytek/framework/ui/share/ShareMoreActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "ShareMoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareMoreActivity"


# instance fields
.field private mAdapter:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

.field private mCommonBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

.field private mContext:Landroid/content/Context;

.field private mIsMMSAvailable:Z

.field private mIsMMSAvailable_HTC:Z

.field private mIsMMSAvailable_IVVI:Z

.field private mIsMMSAvailable_IVVI2:Z

.field private mIsMMSAvailable_LENOVO:Z

.field private mIsMMSAvailable_NEXUS:Z

.field private mIsMMSAvailable_SE:Z

.field private mIsMMSAvailable_SM:Z

.field private mMoreShareApp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPath:Ljava/lang/String;

.field private mShareActivityListener:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

.field private mShareBeyondView:Landroid/widget/LinearLayout;

.field private mShareCancle:Landroid/widget/TextView;

.field private mShareList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/framework/ui/share/LxShareObject$Build;",
            ">;"
        }
    .end annotation
.end field

.field private mShareText:Ljava/lang/String;

.field private mShareTitle:Ljava/lang/String;

.field private mShareTrigger:Ljava/lang/String;

.field private mShareUrl:Ljava/lang/String;

.field private mViewPager:Lcom/iflytek/viafly/ui/WrapContentHeightViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/framework/ui/share/ShareMoreActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/ui/share/ShareMoreActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/framework/ui/share/ShareMoreActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/ui/share/ShareMoreActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mMoreShareApp:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/framework/ui/share/ShareMoreActivity;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/ui/share/ShareMoreActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mCommonBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/framework/ui/share/ShareMoreActivity;)Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/ui/share/ShareMoreActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mAdapter:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    return-object v0
.end method

.method private getPackageNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "com.android.mms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const-string/jumbo v1, "com.htc.sense.mms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const-string/jumbo v1, "com.sonyericsson.conversations"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    const-string/jumbo v1, "com.yulong.coolmessage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    const-string/jumbo v1, "com.android.messaging"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    const-string/jumbo v1, "com.samsung.android.messaging"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    const-string/jumbo v1, "com.lenovo.ideafriend"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    const-string/jumbo v1, "com.google.android.apps.messaging"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    const-string/jumbo v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    const-string/jumbo v1, "com.qzone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    const-string/jumbo v1, "com.sina.weibo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    return-object v0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    const-string/jumbo v1, "shareBuild"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 73
    .local v0, "build":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    invoke-static {}, Lazu;->a()Lazu;

    move-result-object v1

    invoke-virtual {v1}, Lazu;->b()Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareActivityListener:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    .line 74
    iget-object v1, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mImagePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mPath:Ljava/lang/String;

    .line 75
    iget-object v1, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mText:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareText:Ljava/lang/String;

    .line 76
    iget-object v1, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mWebPageUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareUrl:Ljava/lang/String;

    .line 77
    iget-object v1, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareTitle:Ljava/lang/String;

    .line 78
    iget-object v1, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareTrigger:Ljava/lang/String;

    .line 80
    const-string/jumbo v1, "ShareMoreActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mShareTrigger is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareTrigger:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 136
    const/4 v1, 0x0

    sput-boolean v1, Lazu;->a:Z

    .line 138
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.mms"

    invoke-static {v1, v2}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mIsMMSAvailable:Z

    .line 139
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.htc.sense.mms"

    invoke-static {v1, v2}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mIsMMSAvailable_HTC:Z

    .line 140
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.sonyericsson.conversations"

    invoke-static {v1, v2}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mIsMMSAvailable_SE:Z

    .line 141
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.yulong.coolmessage"

    invoke-static {v1, v2}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mIsMMSAvailable_IVVI:Z

    .line 142
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.messaging"

    invoke-static {v1, v2}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mIsMMSAvailable_IVVI2:Z

    .line 143
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.messaging"

    invoke-static {v1, v2}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mIsMMSAvailable_SM:Z

    .line 144
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.lenovo.ideafriend"

    invoke-static {v1, v2}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mIsMMSAvailable_LENOVO:Z

    .line 145
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.google.android.apps.messaging"

    invoke-static {v1, v2}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mIsMMSAvailable_NEXUS:Z

    .line 147
    new-instance v1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    invoke-direct {v1}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;-><init>()V

    iput-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mCommonBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 148
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mCommonBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    const-string/jumbo v2, "webpage"

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mode(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->webPageUrl(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->title(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->des(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->thumbPath(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 155
    :goto_0
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mCommonBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    const-string/jumbo v2, "com.tencent.mm"

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->packageName(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v1

    const-string/jumbo v2, "weixinFriend"

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->tag(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 156
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mCommonBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mCommonBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->changeTimeline(Z)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v2

    const-string/jumbo v3, "weixinTimeLine"

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->tag(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mCommonBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    const-string/jumbo v3, "com.sina.weibo"

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->changePackageName(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v2

    const-string/jumbo v3, "weibo"

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->tag(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mCommonBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    const-string/jumbo v3, "com.qzone"

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->changePackageName(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v2

    const-string/jumbo v3, "qqZone"

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->tag(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mCommonBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    const-string/jumbo v3, "com.tencent.mobileqq"

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->changePackageName(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->thumbPath(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v2

    const-string/jumbo v3, "qq"

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->tag(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    const-string/jumbo v0, ""

    .line 162
    .local v0, "shortMsgPackageName":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mIsMMSAvailable:Z

    if-eqz v1, :cond_3

    .line 163
    const-string/jumbo v0, "com.android.mms"

    .line 182
    :goto_1
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mCommonBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    invoke-virtual {v2, v0}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->changePackageName(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v2

    const-string/jumbo v3, "msg"

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->tag(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-direct {p0}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->getPackageNames()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mPath:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/Share;->isMoreShareSelection(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mMoreShareApp:Ljava/util/List;

    .line 184
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mMoreShareApp:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mMoreShareApp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mCommonBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    const-string/jumbo v3, "more"

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->changePackageName(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mAdapter:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    invoke-virtual {v1}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->notifyDataSetChanged()V

    .line 188
    return-void

    .line 150
    .end local v0    # "shortMsgPackageName":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mCommonBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    const-string/jumbo v2, "image"

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mode(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->imagePath(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    goto/16 :goto_0

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mCommonBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mode(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->text(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    goto/16 :goto_0

    .line 164
    .restart local v0    # "shortMsgPackageName":Ljava/lang/String;
    :cond_3
    iget-boolean v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mIsMMSAvailable_HTC:Z

    if-eqz v1, :cond_4

    .line 165
    const-string/jumbo v0, "com.htc.sense.mms"

    goto :goto_1

    .line 166
    :cond_4
    iget-boolean v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mIsMMSAvailable_SE:Z

    if-eqz v1, :cond_5

    .line 167
    const-string/jumbo v0, "com.sonyericsson.conversations"

    goto :goto_1

    .line 168
    :cond_5
    iget-boolean v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mIsMMSAvailable_IVVI:Z

    if-eqz v1, :cond_6

    .line 169
    const-string/jumbo v0, "com.yulong.coolmessage"

    goto :goto_1

    .line 170
    :cond_6
    iget-boolean v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mIsMMSAvailable_IVVI2:Z

    if-eqz v1, :cond_7

    .line 171
    const-string/jumbo v0, "com.android.messaging"

    goto/16 :goto_1

    .line 172
    :cond_7
    iget-boolean v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mIsMMSAvailable_SM:Z

    if-eqz v1, :cond_8

    .line 173
    const-string/jumbo v0, "com.samsung.android.messaging"

    goto/16 :goto_1

    .line 174
    :cond_8
    iget-boolean v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mIsMMSAvailable_LENOVO:Z

    if-eqz v1, :cond_9

    .line 175
    const-string/jumbo v0, "com.lenovo.ideafriend"

    goto/16 :goto_1

    .line 176
    :cond_9
    iget-boolean v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mIsMMSAvailable_NEXUS:Z

    if-eqz v1, :cond_a

    .line 177
    const-string/jumbo v0, "com.google.android.apps.messaging"

    goto/16 :goto_1

    .line 179
    :cond_a
    const-string/jumbo v0, "com.android.mms"

    goto/16 :goto_1
.end method

.method private initListener()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareBeyondView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 87
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mHead:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->setTitleBarVisible(Z)V

    .line 89
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->setBackgroundColor(I)V

    .line 92
    const v1, 0x7f0b0665

    invoke-virtual {p0, v1}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareCancle:Landroid/widget/TextView;

    .line 93
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareCancle:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v1, 0x7f0b056f

    invoke-virtual {p0, v1}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareBeyondView:Landroid/widget/LinearLayout;

    .line 95
    const v1, 0x7f0b0663

    invoke-virtual {p0, v1}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/ui/WrapContentHeightViewPager;

    iput-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mViewPager:Lcom/iflytek/viafly/ui/WrapContentHeightViewPager;

    .line 96
    const v1, 0x7f0b0664

    invoke-virtual {p0, v1}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/CirclePageIndicator;

    .line 97
    .local v0, "indicator":Lcom/iflytek/viafly/ui/CirclePageIndicator;
    new-instance v1, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mAdapter:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    .line 98
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mAdapter:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    new-instance v2, Lcom/iflytek/framework/ui/share/ShareMoreActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/framework/ui/share/ShareMoreActivity$1;-><init>(Lcom/iflytek/framework/ui/share/ShareMoreActivity;Lcom/iflytek/viafly/ui/CirclePageIndicator;)V

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->setMoreRunnable(Ljava/lang/Runnable;)V

    .line 121
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mAdapter:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mShareActivityListener:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->setShareListener(Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V

    .line 122
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mViewPager:Lcom/iflytek/viafly/ui/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mAdapter:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/WrapContentHeightViewPager;->setAdapter(Lba;)V

    .line 123
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mViewPager:Lcom/iflytek/viafly/ui/WrapContentHeightViewPager;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 124
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->notifyDataSetChanged()V

    .line 125
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->finish()V

    .line 232
    const/4 v0, 0x0

    const v1, 0x7f040004

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->overridePendingTransition(II)V

    .line 233
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 195
    :sswitch_0
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->finish()V

    .line 197
    const/4 v0, 0x0

    const v1, 0x7f040004

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 192
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b056f -> :sswitch_0
        0x7f0b0665 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 58
    const v0, 0x7f03011b

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->setContentView(I)V

    .line 59
    iput-object p0, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->handleIntent(Landroid/content/Intent;)V

    .line 61
    invoke-direct {p0}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->initView()V

    .line 62
    invoke-direct {p0}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->initListener()V

    .line 63
    invoke-direct {p0}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->initData()V

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->mMoreShareApp:Ljava/util/List;

    .line 225
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 226
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method
