.class public Lcom/iflytek/framework/ui/share/LxShareImplWx;
.super Ljava/lang/Object;
.source "LxShareImplWx.java"

# interfaces
.implements Lcom/iflytek/framework/ui/share/ILxShare;


# instance fields
.field private mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

.field private mContext:Landroid/content/Context;

.field private mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "build"    # Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .param p3, "shareResultListener"    # Lcom/iflytek/framework/ui/share/IShareResultListener;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 22
    iput-object p3, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    .line 23
    invoke-static {}, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->getInstance()Lcom/iflytek/framework/ui/share/LxShareCallbackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    invoke-virtual {v0, v1, p3}, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->addShareResultListener(Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)V

    .line 24
    return-void
.end method

.method private preShare(Lcom/iflytek/framework/ui/share/LxShareObject;)Z
    .locals 6
    .param p1, "obj"    # Lcom/iflytek/framework/ui/share/LxShareObject;

    .prologue
    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/framework/ui/share/WXShareUtils;->registerToWX(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    const v2, 0x927c8

    iget-object v3, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v3, v3, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mModule:Ljava/lang/String;

    iget-object v4, p1, Lcom/iflytek/framework/ui/share/LxShareObject;->mTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v5, v5, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/iflytek/framework/ui/share/IShareResultListener;->onResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->getInstance()Lcom/iflytek/framework/ui/share/LxShareCallbackManager;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v2, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->removeShareResultListener(Ljava/lang/String;)V

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    invoke-static {}, Lcom/iflytek/framework/ui/share/WXShareUtils;->isPhoneSupportWXApi()Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    const v2, 0x927d0

    iget-object v3, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v3, v3, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mModule:Ljava/lang/String;

    iget-object v4, p1, Lcom/iflytek/framework/ui/share/LxShareObject;->mTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v5, v5, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/iflytek/framework/ui/share/IShareResultListener;->onResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->getInstance()Lcom/iflytek/framework/ui/share/LxShareCallbackManager;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v2, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->removeShareResultListener(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-boolean v1, v1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTimeline:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/iflytek/framework/ui/share/WXShareUtils;->isSupportTimeLine()Z

    move-result v1

    if-nez v1, :cond_3

    .line 106
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    const v2, 0x927c9

    iget-object v3, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v3, v3, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mModule:Ljava/lang/String;

    iget-object v4, p1, Lcom/iflytek/framework/ui/share/LxShareObject;->mTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v5, v5, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/iflytek/framework/ui/share/IShareResultListener;->onResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->getInstance()Lcom/iflytek/framework/ui/share/LxShareCallbackManager;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v2, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->removeShareResultListener(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private toastError(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    return-void
.end method


# virtual methods
.method public shareImage()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 47
    new-instance v6, Lcom/iflytek/framework/ui/share/LxShareObject;

    invoke-direct {v6}, Lcom/iflytek/framework/ui/share/LxShareObject;-><init>()V

    .line 48
    .local v6, "obj":Lcom/iflytek/framework/ui/share/LxShareObject;
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v0, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mImagePath:Ljava/lang/String;

    iput-object v0, v6, Lcom/iflytek/framework/ui/share/LxShareObject;->mImagePath:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v0, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    iput-object v0, v6, Lcom/iflytek/framework/ui/share/LxShareObject;->mTag:Ljava/lang/String;

    .line 50
    invoke-direct {p0, v6}, Lcom/iflytek/framework/ui/share/LxShareImplWx;->preShare(Lcom/iflytek/framework/ui/share/LxShareObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const-string/jumbo v0, "\u5206\u4eab\u5931\u8d25"

    invoke-direct {p0, v0}, Lcom/iflytek/framework/ui/share/LxShareImplWx;->toastError(Ljava/lang/String;)V

    .line 55
    :goto_0
    return v5

    .line 54
    :cond_0
    const-string/jumbo v0, "LxShareImplWx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shareImage  mImagePath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/iflytek/framework/ui/share/LxShareObject;->mImagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mShareId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v2, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v1, v1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    iget-object v2, v6, Lcom/iflytek/framework/ui/share/LxShareObject;->mImagePath:Ljava/lang/String;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static {}, Lcom/iflytek/framework/ui/share/WXShareUtils;->isSupportTimeLine()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-boolean v7, v7, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTimeline:Z

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-static/range {v0 .. v5}, Lcom/iflytek/framework/ui/share/WXShareUtils;->localImageShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_0
.end method

.method public shareLink()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 59
    new-instance v7, Lcom/iflytek/framework/ui/share/LxShareObject;

    invoke-direct {v7}, Lcom/iflytek/framework/ui/share/LxShareObject;-><init>()V

    .line 60
    .local v7, "obj":Lcom/iflytek/framework/ui/share/LxShareObject;
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v0, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mWebPageUrl:Ljava/lang/String;

    iput-object v0, v7, Lcom/iflytek/framework/ui/share/LxShareObject;->mWebPageUrl:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v0, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTitle:Ljava/lang/String;

    iput-object v0, v7, Lcom/iflytek/framework/ui/share/LxShareObject;->mTitle:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v0, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mDes:Ljava/lang/String;

    iput-object v0, v7, Lcom/iflytek/framework/ui/share/LxShareObject;->mDes:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v0, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mThumbPath:Ljava/lang/String;

    iput-object v0, v7, Lcom/iflytek/framework/ui/share/LxShareObject;->mThumbPath:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v0, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    iput-object v0, v7, Lcom/iflytek/framework/ui/share/LxShareObject;->mTag:Ljava/lang/String;

    .line 65
    invoke-direct {p0, v7}, Lcom/iflytek/framework/ui/share/LxShareImplWx;->preShare(Lcom/iflytek/framework/ui/share/LxShareObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const-string/jumbo v0, "\u5206\u4eab\u5931\u8d25"

    invoke-direct {p0, v0}, Lcom/iflytek/framework/ui/share/LxShareImplWx;->toastError(Ljava/lang/String;)V

    .line 70
    :goto_0
    return v6

    .line 69
    :cond_0
    const-string/jumbo v0, "LxShareImplWx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shareLink  mWebpageUrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/iflytek/framework/ui/share/LxShareObject;->mWebPageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mShareId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v2, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v1, v1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    iget-object v2, v7, Lcom/iflytek/framework/ui/share/LxShareObject;->mWebPageUrl:Ljava/lang/String;

    iget-object v3, v7, Lcom/iflytek/framework/ui/share/LxShareObject;->mTitle:Ljava/lang/String;

    iget-object v4, v7, Lcom/iflytek/framework/ui/share/LxShareObject;->mDes:Ljava/lang/String;

    iget-object v5, v7, Lcom/iflytek/framework/ui/share/LxShareObject;->mThumbPath:Ljava/lang/String;

    invoke-static {}, Lcom/iflytek/framework/ui/share/WXShareUtils;->isSupportTimeLine()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-boolean v8, v8, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTimeline:Z

    if-eqz v8, :cond_1

    const/4 v6, 0x1

    :cond_1
    invoke-static/range {v0 .. v6}, Lcom/iflytek/framework/ui/share/WXShareUtils;->webPageShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    goto :goto_0
.end method

.method public shareMusic()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 73
    new-instance v8, Lcom/iflytek/framework/ui/share/LxShareObject;

    invoke-direct {v8}, Lcom/iflytek/framework/ui/share/LxShareObject;-><init>()V

    .line 74
    .local v8, "obj":Lcom/iflytek/framework/ui/share/LxShareObject;
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v0, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mWebPageUrl:Ljava/lang/String;

    iput-object v0, v8, Lcom/iflytek/framework/ui/share/LxShareObject;->mWebPageUrl:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v0, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mMusicUrl:Ljava/lang/String;

    iput-object v0, v8, Lcom/iflytek/framework/ui/share/LxShareObject;->mMusicUrl:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v0, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTitle:Ljava/lang/String;

    iput-object v0, v8, Lcom/iflytek/framework/ui/share/LxShareObject;->mTitle:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v0, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mDes:Ljava/lang/String;

    iput-object v0, v8, Lcom/iflytek/framework/ui/share/LxShareObject;->mDes:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v0, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mThumbPath:Ljava/lang/String;

    iput-object v0, v8, Lcom/iflytek/framework/ui/share/LxShareObject;->mThumbPath:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v0, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    iput-object v0, v8, Lcom/iflytek/framework/ui/share/LxShareObject;->mTag:Ljava/lang/String;

    .line 80
    invoke-direct {p0, v8}, Lcom/iflytek/framework/ui/share/LxShareImplWx;->preShare(Lcom/iflytek/framework/ui/share/LxShareObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const-string/jumbo v0, "\u5206\u4eab\u5931\u8d25"

    invoke-direct {p0, v0}, Lcom/iflytek/framework/ui/share/LxShareImplWx;->toastError(Ljava/lang/String;)V

    .line 86
    :goto_0
    return v7

    .line 84
    :cond_0
    const-string/jumbo v0, "LxShareImplWx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shareMusic  mWebpageUrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/iflytek/framework/ui/share/LxShareObject;->mWebPageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mShareId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v2, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v1, v1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    iget-object v2, v8, Lcom/iflytek/framework/ui/share/LxShareObject;->mWebPageUrl:Ljava/lang/String;

    iget-object v3, v8, Lcom/iflytek/framework/ui/share/LxShareObject;->mMusicUrl:Ljava/lang/String;

    iget-object v4, v8, Lcom/iflytek/framework/ui/share/LxShareObject;->mTitle:Ljava/lang/String;

    iget-object v5, v8, Lcom/iflytek/framework/ui/share/LxShareObject;->mDes:Ljava/lang/String;

    iget-object v6, v8, Lcom/iflytek/framework/ui/share/LxShareObject;->mThumbPath:Ljava/lang/String;

    invoke-static {}, Lcom/iflytek/framework/ui/share/WXShareUtils;->isSupportTimeLine()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-boolean v9, v9, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTimeline:Z

    if-eqz v9, :cond_1

    const/4 v7, 0x1

    :cond_1
    invoke-static/range {v0 .. v7}, Lcom/iflytek/framework/ui/share/WXShareUtils;->musicShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_0
.end method

.method public shareText()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/iflytek/framework/ui/share/LxShareObject;

    invoke-direct {v0}, Lcom/iflytek/framework/ui/share/LxShareObject;-><init>()V

    .line 28
    .local v0, "obj":Lcom/iflytek/framework/ui/share/LxShareObject;
    iget-object v3, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v3, v3, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mText:Ljava/lang/String;

    iput-object v3, v0, Lcom/iflytek/framework/ui/share/LxShareObject;->mText:Ljava/lang/String;

    .line 29
    iget-object v3, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v3, v3, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    iput-object v3, v0, Lcom/iflytek/framework/ui/share/LxShareObject;->mTag:Ljava/lang/String;

    .line 30
    invoke-direct {p0, v0}, Lcom/iflytek/framework/ui/share/LxShareImplWx;->preShare(Lcom/iflytek/framework/ui/share/LxShareObject;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 31
    const-string/jumbo v3, "\u5206\u4eab\u5931\u8d25"

    invoke-direct {p0, v3}, Lcom/iflytek/framework/ui/share/LxShareImplWx;->toastError(Ljava/lang/String;)V

    .line 43
    :goto_0
    return v2

    .line 34
    :cond_0
    const-string/jumbo v3, "LxShareImplWx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shareText  mText : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/iflytek/framework/ui/share/LxShareObject;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mShareId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v5, v5, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v3, v0, Lcom/iflytek/framework/ui/share/LxShareObject;->mText:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v4, v4, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    invoke-static {}, Lcom/iflytek/framework/ui/share/WXShareUtils;->isSupportTimeLine()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-boolean v5, v5, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTimeline:Z

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v3, v4, v2}, Lcom/iflytek/framework/ui/share/WXShareUtils;->textShare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 36
    .local v1, "result":Z
    if-nez v1, :cond_2

    .line 37
    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mContext:Landroid/content/Context;

    const v3, 0x7f0c020e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iflytek/framework/ui/share/LxShareImplWx;->toastError(Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    if-eqz v2, :cond_2

    .line 39
    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    const v3, 0x927c7

    iget-object v4, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v4, v4, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mModule:Ljava/lang/String;

    iget-object v5, v0, Lcom/iflytek/framework/ui/share/LxShareObject;->mTag:Ljava/lang/String;

    iget-object v6, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v6, v6, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/iflytek/framework/ui/share/IShareResultListener;->onResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->getInstance()Lcom/iflytek/framework/ui/share/LxShareCallbackManager;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/framework/ui/share/LxShareImplWx;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v3, v3, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->removeShareResultListener(Ljava/lang/String;)V

    :cond_2
    move v2, v1

    .line 43
    goto :goto_0
.end method
