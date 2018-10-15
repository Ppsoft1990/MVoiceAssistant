.class public Lcom/iflytek/framework/ui/share/LxShareImplOther;
.super Ljava/lang/Object;
.source "LxShareImplOther.java"

# interfaces
.implements Lcom/iflytek/framework/ui/share/ILxShare;


# instance fields
.field private mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

.field private mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "build"    # Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .param p3, "shareResultListener"    # Lcom/iflytek/framework/ui/share/IShareResultListener;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 20
    invoke-static {}, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->getInstance()Lcom/iflytek/framework/ui/share/LxShareCallbackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    invoke-virtual {v0, v1, p3}, Lcom/iflytek/framework/ui/share/LxShareCallbackManager;->addShareResultListener(Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)V

    .line 21
    return-void
.end method


# virtual methods
.method public shareImage()Z
    .locals 5

    .prologue
    .line 33
    new-instance v0, Lcom/iflytek/framework/ui/share/LxShareObject;

    invoke-direct {v0}, Lcom/iflytek/framework/ui/share/LxShareObject;-><init>()V

    .line 34
    .local v0, "obj":Lcom/iflytek/framework/ui/share/LxShareObject;
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v1, v1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mImagePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/iflytek/framework/ui/share/LxShareObject;->mImagePath:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v1, v1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    iput-object v1, v0, Lcom/iflytek/framework/ui/share/LxShareObject;->mTag:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/iflytek/framework/ui/share/LxShareObject;->mImagePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v3, v3, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/iflytek/yd/util/Share;->shareToApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string/jumbo v1, "LxShareImplOther"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shareImage  mImagePath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/iflytek/framework/ui/share/LxShareObject;->mImagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mShareId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v3, v3, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v1, 0x1

    return v1
.end method

.method public shareLink()Z
    .locals 5

    .prologue
    .line 42
    new-instance v1, Lcom/iflytek/framework/ui/share/LxShareObject;

    invoke-direct {v1}, Lcom/iflytek/framework/ui/share/LxShareObject;-><init>()V

    .line 43
    .local v1, "obj":Lcom/iflytek/framework/ui/share/LxShareObject;
    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v2, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mWebPageUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mWebPageUrl:Ljava/lang/String;

    .line 44
    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v2, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mTitle:Ljava/lang/String;

    .line 45
    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v2, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mDes:Ljava/lang/String;

    iput-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mDes:Ljava/lang/String;

    .line 46
    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v2, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mThumbPath:Ljava/lang/String;

    iput-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mThumbPath:Ljava/lang/String;

    .line 47
    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v2, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    iput-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mTag:Ljava/lang/String;

    .line 48
    iget-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mDes:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mDes:Ljava/lang/String;

    .line 53
    :goto_0
    iget-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mTitle:Ljava/lang/String;

    .line 58
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mDes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mWebPageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mThumbPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v4, v4, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/iflytek/yd/util/Share;->shareToApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo v2, "LxShareImplOther"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shareLink  content : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mShareId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v4, v4, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v2, 0x1

    return v2

    .line 51
    .end local v0    # "content":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mDes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mDes:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mTitle:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public shareMusic()Z
    .locals 5

    .prologue
    .line 66
    new-instance v1, Lcom/iflytek/framework/ui/share/LxShareObject;

    invoke-direct {v1}, Lcom/iflytek/framework/ui/share/LxShareObject;-><init>()V

    .line 67
    .local v1, "obj":Lcom/iflytek/framework/ui/share/LxShareObject;
    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v2, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mWebPageUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mWebPageUrl:Ljava/lang/String;

    .line 68
    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v2, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mMusicUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mMusicUrl:Ljava/lang/String;

    .line 69
    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v2, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mTitle:Ljava/lang/String;

    .line 70
    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v2, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mDes:Ljava/lang/String;

    iput-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mDes:Ljava/lang/String;

    .line 71
    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v2, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mThumbPath:Ljava/lang/String;

    iput-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mThumbPath:Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v2, v2, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    iput-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mTag:Ljava/lang/String;

    .line 73
    iget-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mDes:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mDes:Ljava/lang/String;

    .line 78
    :goto_0
    iget-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mTitle:Ljava/lang/String;

    .line 83
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mDes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mWebPageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mThumbPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v4, v4, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/iflytek/yd/util/Share;->shareToApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string/jumbo v2, "LxShareImplOther"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shareLink  content : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mShareId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v4, v4, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v2, 0x1

    return v2

    .line 76
    .end local v0    # "content":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mDes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mDes:Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/iflytek/framework/ui/share/LxShareObject;->mTitle:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public shareText()Z
    .locals 5

    .prologue
    .line 24
    new-instance v0, Lcom/iflytek/framework/ui/share/LxShareObject;

    invoke-direct {v0}, Lcom/iflytek/framework/ui/share/LxShareObject;-><init>()V

    .line 25
    .local v0, "obj":Lcom/iflytek/framework/ui/share/LxShareObject;
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v1, v1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mText:Ljava/lang/String;

    iput-object v1, v0, Lcom/iflytek/framework/ui/share/LxShareObject;->mText:Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v1, v1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    iput-object v1, v0, Lcom/iflytek/framework/ui/share/LxShareObject;->mTag:Ljava/lang/String;

    .line 27
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v3, v3, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/framework/ui/share/LxShareObject;->mText:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/iflytek/yd/util/Share;->shareToApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string/jumbo v1, "LxShareImplOther"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shareText  mText : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/iflytek/framework/ui/share/LxShareObject;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mShareId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/framework/ui/share/LxShareImplOther;->mBuild:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v3, v3, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v1, 0x1

    return v1
.end method
