.class public Lcom/iflytek/viafly/im/IMHelper;
.super Ljava/lang/Object;
.source "IMHelper.java"


# instance fields
.field private final RESULT_LOAD_IMAGE:I

.field private final TAG:Ljava/lang/String;

.field private failMethodName:Ljava/lang/String;

.field private imageUtils:Lcom/iflytek/viafly/im/ImageUtils;

.field private mContext:Landroid/content/Context;

.field private sendImageTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private successMethodName:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webview"    # Landroid/webkit/WebView;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string/jumbo v0, "IMHelper"

    iput-object v0, p0, Lcom/iflytek/viafly/im/IMHelper;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/im/IMHelper;->RESULT_LOAD_IMAGE:I

    .line 44
    iput-object p1, p0, Lcom/iflytek/viafly/im/IMHelper;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/iflytek/viafly/im/IMHelper;->webView:Landroid/webkit/WebView;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/im/IMHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/im/IMHelper;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/iflytek/viafly/im/IMHelper;->doPickPhotoFromGallery()V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/im/IMHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/im/IMHelper;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iflytek/viafly/im/IMHelper;->successMethodName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/im/IMHelper;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/im/IMHelper;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iflytek/viafly/im/IMHelper;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private doPickPhotoFromGallery()V
    .locals 5

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "intent":Landroid/content/Intent;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 128
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 135
    .restart local v1    # "intent":Landroid/content/Intent;
    :goto_0
    const-string/jumbo v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/viafly/im/IMHelper;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_1
    return-void

    .line 132
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 133
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "\u6253\u5f00\u76f8\u518c\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private sendImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    .line 192
    new-instance v0, Lcom/iflytek/viafly/im/IMHelper$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/iflytek/viafly/im/IMHelper$3;-><init>(Lcom/iflytek/viafly/im/IMHelper;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/viafly/im/IMHelper;->sendImageTask:Landroid/os/AsyncTask;

    .line 244
    iget-object v0, p0, Lcom/iflytek/viafly/im/IMHelper;->sendImageTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 245
    return-void
.end method


# virtual methods
.method public chooseImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "successName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/viafly/im/IMHelper;->chooseImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public chooseImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "successName"    # Ljava/lang/String;
    .param p2, "failName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u672a\u77e5\u5f02\u5e38\uff0c\u8bf7\u5237\u65b0\u9875\u9762\u518d\u8bd5"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    :goto_0
    return-void

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/iflytek/viafly/im/IMHelper;->successMethodName:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/im/IMHelper;->failMethodName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iput-object p2, p0, Lcom/iflytek/viafly/im/IMHelper;->failMethodName:Ljava/lang/String;

    .line 104
    :cond_1
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u65e0\u6cd5\u4e0a\u4f20\u56fe\u7247"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 110
    :cond_2
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/im/IMHelper$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/im/IMHelper$2;-><init>(Lcom/iflytek/viafly/im/IMHelper;)V

    invoke-static {v0, v1}, Lpg;->a(Landroid/content/Context;Lpg$a;)V

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 53
    const-string/jumbo v0, "IMHelper"

    const-string/jumbo v1, "im close"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iflytek/viafly/im/IMHelper$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/im/IMHelper$1;-><init>(Lcom/iflytek/viafly/im/IMHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 67
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 156
    const-string/jumbo v3, "IMHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",resultCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 159
    if-eqz p3, :cond_5

    .line 161
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/viafly/im/IMHelper;->imageUtils:Lcom/iflytek/viafly/im/ImageUtils;

    if-nez v3, :cond_0

    .line 162
    new-instance v3, Lcom/iflytek/viafly/im/ImageUtils;

    invoke-direct {v3}, Lcom/iflytek/viafly/im/ImageUtils;-><init>()V

    iput-object v3, p0, Lcom/iflytek/viafly/im/IMHelper;->imageUtils:Lcom/iflytek/viafly/im/ImageUtils;

    .line 164
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/im/IMHelper;->imageUtils:Lcom/iflytek/viafly/im/ImageUtils;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/im/ImageUtils;->getImageAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "picturePath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 166
    const-string/jumbo v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "suffix":Ljava/lang/String;
    const-string/jumbo v3, "IMHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "suffix = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string/jumbo v3, "jpg"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "jpeg"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "png"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/im/IMHelper;->imageUtils:Lcom/iflytek/viafly/im/ImageUtils;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/im/ImageUtils;->getSmallBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/iflytek/viafly/im/IMHelper;->sendImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 183
    .end local v1    # "picturePath":Ljava/lang/String;
    .end local v2    # "suffix":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 171
    .restart local v1    # "picturePath":Ljava/lang/String;
    .restart local v2    # "suffix":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "\u6682\u4e0d\u652f\u6301\u8be5\u683c\u5f0f\u7684\u56fe\u7247\u4e0a\u4f20\uff0c\u8bf7\u9009\u62e9\u5176\u4ed6\u56fe\u7247"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    .end local v1    # "picturePath":Ljava/lang/String;
    .end local v2    # "suffix":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "IMHelper"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "picturePath":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "\u83b7\u53d6\u56fe\u7247\u8def\u5f84\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 180
    .end local v1    # "picturePath":Ljava/lang/String;
    :cond_5
    const-string/jumbo v3, "IMHelper"

    const-string/jumbo v4, "OnlineServiceFragment onActivityResult data is null."

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    const-string/jumbo v0, "IMHelper"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/iflytek/viafly/im/IMHelper;->sendImageTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/iflytek/viafly/im/IMHelper;->sendImageTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 148
    iput-object v2, p0, Lcom/iflytek/viafly/im/IMHelper;->sendImageTask:Landroid/os/AsyncTask;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/im/IMHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/iflytek/viafly/im/IMHelper;->mContext:Landroid/content/Context;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/im/IMHelper;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/iflytek/viafly/im/IMHelper;->webView:Landroid/webkit/WebView;

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/im/IMHelper;->imageUtils:Lcom/iflytek/viafly/im/ImageUtils;

    if-eqz v0, :cond_3

    iput-object v2, p0, Lcom/iflytek/viafly/im/IMHelper;->imageUtils:Lcom/iflytek/viafly/im/ImageUtils;

    .line 153
    :cond_3
    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 77
    return-void
.end method
