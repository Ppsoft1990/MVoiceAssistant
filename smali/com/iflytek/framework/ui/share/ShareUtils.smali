.class public Lcom/iflytek/framework/ui/share/ShareUtils;
.super Ljava/lang/Object;
.source "ShareUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareUtils"

.field private static mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .param p2, "x2"    # Lcom/iflytek/framework/ui/share/IShareResultListener;

    .prologue
    .line 36
    invoke-static {p0, p1, p2}, Lcom/iflytek/framework/ui/share/ShareUtils;->shareImpl(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/iflytek/framework/ui/share/ShareUtils;->getImageLocalPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/framework/ui/share/IShareResultListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/ui/share/IShareResultListener;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0, p1, p2, p3, p4}, Lcom/iflytek/framework/ui/share/ShareUtils;->callback(Lcom/iflytek/framework/ui/share/IShareResultListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/iflytek/framework/ui/share/ShareUtils;->initProcessDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/iflytek/framework/ui/share/ShareUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500()V
    .locals 0

    .prologue
    .line 36
    invoke-static {}, Lcom/iflytek/framework/ui/share/ShareUtils;->resetProgressDialog()V

    return-void
.end method

.method private static callback(Lcom/iflytek/framework/ui/share/IShareResultListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "shareResultListener"    # Lcom/iflytek/framework/ui/share/IShareResultListener;
    .param p1, "errorCode"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "shareId"    # Ljava/lang/String;

    .prologue
    .line 322
    if-eqz p0, :cond_0

    .line 323
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/iflytek/framework/ui/share/IShareResultListener;->onResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_0
    return-void
.end method

.method private static checkImagePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/iflytek/framework/ui/share/IShareResultListener;Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "shareId"    # Ljava/lang/String;
    .param p4, "imagePath"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "shareResultListener"    # Lcom/iflytek/framework/ui/share/IShareResultListener;
    .param p7, "loadImageListener"    # Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;

    .prologue
    .line 210
    if-nez p0, :cond_0

    .line 211
    const v1, 0x927ca

    move-object/from16 v0, p6

    invoke-static {v0, v1, p1, p2, p3}, Lcom/iflytek/framework/ui/share/ShareUtils;->callback(Lcom/iflytek/framework/ui/share/IShareResultListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    new-instance v1, Lcom/iflytek/framework/ui/share/ShareUtils$4;

    move-object v2, p4

    move-object/from16 v3, p7

    move v4, p5

    move-object/from16 v5, p6

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/iflytek/framework/ui/share/ShareUtils$4;-><init>(Ljava/lang/String;Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;ILcom/iflytek/framework/ui/share/IShareResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p0, v1}, Lpg;->a(Landroid/content/Context;Lpg$a;)V

    goto :goto_0

    .line 286
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;->load(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getImageLocalPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 328
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    const/4 v2, 0x0

    .line 333
    :goto_0
    return-object v2

    .line 331
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 332
    .local v0, "hashCode":I
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 333
    .local v1, "name":I
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/ViaFly/Download/share_image_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 332
    .end local v1    # "name":I
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_1
.end method

.method private static initProcessDialog(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 297
    sget-object v0, Lcom/iflytek/framework/ui/share/ShareUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/framework/ui/share/ShareUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 299
    sget-object v0, Lcom/iflytek/framework/ui/share/ShareUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 300
    sget-object v0, Lcom/iflytek/framework/ui/share/ShareUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string/jumbo v1, "\u8bf7\u7a0d\u7b49..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 301
    sget-object v0, Lcom/iflytek/framework/ui/share/ShareUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 302
    sget-object v0, Lcom/iflytek/framework/ui/share/ShareUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 303
    sget-object v0, Lcom/iflytek/framework/ui/share/ShareUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/iflytek/framework/ui/share/ShareUtils$5;

    invoke-direct {v1}, Lcom/iflytek/framework/ui/share/ShareUtils$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 312
    :cond_0
    return-void
.end method

.method private static resetProgressDialog()V
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/iflytek/framework/ui/share/ShareUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/framework/ui/share/ShareUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    sget-object v0, Lcom/iflytek/framework/ui/share/ShareUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 317
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/framework/ui/share/ShareUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 319
    :cond_0
    return-void
.end method

.method public static share(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "build"    # Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .param p2, "shareResultListener"    # Lcom/iflytek/framework/ui/share/IShareResultListener;

    .prologue
    const/4 v5, 0x2

    const v2, 0x927c7

    const/4 v4, 0x0

    .line 49
    iget-object v0, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/framework/ui/share/WXShareUtils;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "shareId":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->shareId(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 51
    iget-object v0, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string/jumbo v0, "\u8be5\u5e94\u7528\u672a\u5b89\u88c5\u6216\u4e0d\u652f\u6301\u5206\u4eab"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 53
    iget-object v0, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mModule:Ljava/lang/String;

    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    invoke-static {p2, v2, v0, v1, v3}, Lcom/iflytek/framework/ui/share/ShareUtils;->callback(Lcom/iflytek/framework/ui/share/IShareResultListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v3, ""

    .line 135
    .end local v3    # "shareId":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 56
    .restart local v3    # "shareId":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "webpage"

    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mWebPageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 58
    const-string/jumbo v0, "\u5206\u4eab\u5931\u8d25"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 59
    iget-object v0, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mModule:Ljava/lang/String;

    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    invoke-static {p2, v2, v0, v1, v3}, Lcom/iflytek/framework/ui/share/ShareUtils;->callback(Lcom/iflytek/framework/ui/share/IShareResultListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo v3, ""

    goto :goto_0

    .line 62
    :cond_1
    const-string/jumbo v0, "image"

    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    iget-object v0, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mImagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    const-string/jumbo v0, "\u5206\u4eab\u5931\u8d25"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 65
    iget-object v0, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mModule:Ljava/lang/String;

    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    invoke-static {p2, v2, v0, v1, v3}, Lcom/iflytek/framework/ui/share/ShareUtils;->callback(Lcom/iflytek/framework/ui/share/IShareResultListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v3, ""

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 70
    const v0, 0x927ce

    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mModule:Ljava/lang/String;

    iget-object v2, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    invoke-static {p2, v0, v1, v2, v3}, Lcom/iflytek/framework/ui/share/ShareUtils;->callback(Lcom/iflytek/framework/ui/share/IShareResultListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0300

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 72
    const-string/jumbo v3, ""

    goto :goto_0

    .line 75
    :cond_3
    const-string/jumbo v0, "text"

    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    iget-object v0, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 77
    const-string/jumbo v0, "\u5206\u4eab\u5931\u8d25"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 78
    iget-object v0, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mModule:Ljava/lang/String;

    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    invoke-static {p2, v2, v0, v1, v3}, Lcom/iflytek/framework/ui/share/ShareUtils;->callback(Lcom/iflytek/framework/ui/share/IShareResultListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v3, ""

    goto/16 :goto_0

    .line 81
    :cond_4
    const-string/jumbo v0, "music"

    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 82
    iget-object v0, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mMusicUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    const-string/jumbo v0, "\u65e0\u6b4c\u66f2\u8bd5\u542c\u5730\u5740"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 84
    iget-object v0, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mModule:Ljava/lang/String;

    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    invoke-static {p2, v2, v0, v1, v3}, Lcom/iflytek/framework/ui/share/ShareUtils;->callback(Lcom/iflytek/framework/ui/share/IShareResultListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string/jumbo v3, ""

    goto/16 :goto_0

    .line 86
    :cond_5
    iget-object v0, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mWebPageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 87
    const-string/jumbo v0, "\u65e0\u5206\u4eab\u5730\u5740"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 88
    iget-object v0, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mModule:Ljava/lang/String;

    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    invoke-static {p2, v2, v0, v1, v3}, Lcom/iflytek/framework/ui/share/ShareUtils;->callback(Lcom/iflytek/framework/ui/share/IShareResultListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v3, ""

    goto/16 :goto_0

    .line 94
    :cond_6
    const-string/jumbo v0, "webpage"

    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 98
    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mModule:Ljava/lang/String;

    iget-object v2, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    iget-object v4, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mThumbPath:Ljava/lang/String;

    new-instance v7, Lcom/iflytek/framework/ui/share/ShareUtils$1;

    invoke-direct {v7, p1, p0, p2}, Lcom/iflytek/framework/ui/share/ShareUtils$1;-><init>(Lcom/iflytek/framework/ui/share/LxShareObject$Build;Landroid/content/Context;Lcom/iflytek/framework/ui/share/IShareResultListener;)V

    move-object v0, p0

    move-object v6, p2

    invoke-static/range {v0 .. v7}, Lcom/iflytek/framework/ui/share/ShareUtils;->checkImagePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/iflytek/framework/ui/share/IShareResultListener;Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;)V

    goto/16 :goto_0

    .line 105
    :cond_7
    const-string/jumbo v0, "image"

    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 108
    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mModule:Ljava/lang/String;

    iget-object v2, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    iget-object v4, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mImagePath:Ljava/lang/String;

    const/4 v5, 0x1

    new-instance v7, Lcom/iflytek/framework/ui/share/ShareUtils$2;

    invoke-direct {v7, p0, p1, p2}, Lcom/iflytek/framework/ui/share/ShareUtils$2;-><init>(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)V

    move-object v0, p0

    move-object v6, p2

    invoke-static/range {v0 .. v7}, Lcom/iflytek/framework/ui/share/ShareUtils;->checkImagePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/iflytek/framework/ui/share/IShareResultListener;Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;)V

    goto/16 :goto_0

    .line 119
    :cond_8
    const-string/jumbo v0, "music"

    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 123
    iget-object v1, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mModule:Ljava/lang/String;

    iget-object v2, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    iget-object v4, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mThumbPath:Ljava/lang/String;

    new-instance v7, Lcom/iflytek/framework/ui/share/ShareUtils$3;

    invoke-direct {v7, p1, p0, p2}, Lcom/iflytek/framework/ui/share/ShareUtils$3;-><init>(Lcom/iflytek/framework/ui/share/LxShareObject$Build;Landroid/content/Context;Lcom/iflytek/framework/ui/share/IShareResultListener;)V

    move-object v0, p0

    move-object v6, p2

    invoke-static/range {v0 .. v7}, Lcom/iflytek/framework/ui/share/ShareUtils;->checkImagePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/iflytek/framework/ui/share/IShareResultListener;Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;)V

    goto/16 :goto_0

    .line 133
    :cond_9
    invoke-static {p0, p1, p2}, Lcom/iflytek/framework/ui/share/ShareUtils;->shareImpl(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)Z

    goto/16 :goto_0
.end method

.method public static share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shareUrl"    # Ljava/lang/String;
    .param p2, "imagePath"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shareTitle"    # Ljava/lang/String;
    .param p5, "shareText"    # Ljava/lang/String;
    .param p6, "isTimeLine"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    const-string/jumbo v7, "ShareUtils"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v8}, Lcom/iflytek/framework/ui/share/ShareUtils;->shareWithCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/iflytek/framework/ui/share/IShareResultListener;)V

    .line 151
    return-void
.end method

.method private static shareImpl(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "build"    # Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .param p2, "shareResultListener"    # Lcom/iflytek/framework/ui/share/IShareResultListener;

    .prologue
    .line 338
    const-string/jumbo v1, "com.tencent.mm"

    iget-object v2, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    new-instance v0, Lcom/iflytek/framework/ui/share/LxShareImplWx;

    invoke-direct {v0, p0, p1, p2}, Lcom/iflytek/framework/ui/share/LxShareImplWx;-><init>(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)V

    .line 343
    .local v0, "share":Lcom/iflytek/framework/ui/share/ILxShare;
    :goto_0
    const-string/jumbo v1, "text"

    iget-object v2, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    invoke-interface {v0}, Lcom/iflytek/framework/ui/share/ILxShare;->shareText()Z

    move-result v1

    .line 352
    :goto_1
    return v1

    .line 341
    .end local v0    # "share":Lcom/iflytek/framework/ui/share/ILxShare;
    :cond_0
    new-instance v0, Lcom/iflytek/framework/ui/share/LxShareImplOther;

    invoke-direct {v0, p0, p1, p2}, Lcom/iflytek/framework/ui/share/LxShareImplOther;-><init>(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)V

    .restart local v0    # "share":Lcom/iflytek/framework/ui/share/ILxShare;
    goto :goto_0

    .line 345
    :cond_1
    const-string/jumbo v1, "image"

    iget-object v2, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    invoke-interface {v0}, Lcom/iflytek/framework/ui/share/ILxShare;->shareImage()Z

    move-result v1

    goto :goto_1

    .line 347
    :cond_2
    const-string/jumbo v1, "webpage"

    iget-object v2, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 348
    invoke-interface {v0}, Lcom/iflytek/framework/ui/share/ILxShare;->shareLink()Z

    move-result v1

    goto :goto_1

    .line 349
    :cond_3
    const-string/jumbo v1, "music"

    iget-object v2, p1, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 350
    invoke-interface {v0}, Lcom/iflytek/framework/ui/share/ILxShare;->shareMusic()Z

    move-result v1

    goto :goto_1

    .line 352
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static shareWithCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/framework/ui/share/IShareResultListener;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shareUrl"    # Ljava/lang/String;
    .param p2, "imagePath"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shareTitle"    # Ljava/lang/String;
    .param p5, "shareText"    # Ljava/lang/String;
    .param p6, "isTimeLine"    # Z
    .param p7, "shareResultListener"    # Lcom/iflytek/framework/ui/share/IShareResultListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 167
    const-string/jumbo v7, "ShareUtils"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/iflytek/framework/ui/share/ShareUtils;->shareWithCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/iflytek/framework/ui/share/IShareResultListener;)V

    .line 168
    return-void
.end method

.method public static shareWithCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/iflytek/framework/ui/share/IShareResultListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shareUrl"    # Ljava/lang/String;
    .param p2, "imagePath"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shareTitle"    # Ljava/lang/String;
    .param p5, "shareText"    # Ljava/lang/String;
    .param p6, "isTimeLine"    # Z
    .param p7, "tag"    # Ljava/lang/String;
    .param p8, "shareResultListener"    # Lcom/iflytek/framework/ui/share/IShareResultListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    new-instance v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    invoke-direct {v0}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;-><init>()V

    .line 186
    .local v0, "build":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    invoke-virtual {v0, p7}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->tag(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 187
    invoke-virtual {v0, p3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->packageName(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 188
    invoke-virtual {v0, p6}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->timeline(Z)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    const-string/jumbo v1, "webpage"

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mode(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->webPageUrl(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->title(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->des(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->thumbPath(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 198
    :goto_0
    invoke-static {p0, v0, p8}, Lcom/iflytek/framework/ui/share/ShareUtils;->share(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)Ljava/lang/String;

    .line 199
    return-void

    .line 193
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mode(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->imagePath(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    goto :goto_0

    .line 196
    :cond_1
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mode(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->text(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    goto :goto_0
.end method
