.class public Layv;
.super Ljava/lang/Object;
.source "TranslatePicPresenter.java"

# interfaces
.implements Lcom/iflytek/yd/speech/SpeechHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layv$a;
    }
.end annotation


# instance fields
.field private a:Lays;

.field private b:Layl;

.field private c:Layd;

.field private d:Landroid/content/Context;

.field private e:Layl$a;

.field private f:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

.field private g:Lju;

.field private h:Layx;

.field private i:Layo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lays;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lays;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Layv$1;

    invoke-direct {v0, p0}, Layv$1;-><init>(Layv;)V

    iput-object v0, p0, Layv;->e:Layl$a;

    .line 279
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslatePicPresenter$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicPresenter$3;-><init>(Layv;)V

    iput-object v0, p0, Layv;->f:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    .line 301
    new-instance v0, Layv$3;

    invoke-direct {v0, p0}, Layv$3;-><init>(Layv;)V

    iput-object v0, p0, Layv;->g:Lju;

    .line 65
    iput-object p2, p0, Layv;->a:Lays;

    .line 66
    iput-object p1, p0, Layv;->d:Landroid/content/Context;

    .line 67
    new-instance v0, Layl;

    iget-object v1, p0, Layv;->e:Layl$a;

    invoke-direct {v0, v1}, Layl;-><init>(Layl$a;)V

    iput-object v0, p0, Layv;->b:Layl;

    .line 68
    new-instance v0, Layd;

    iget-object v1, p0, Layv;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Layd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Layv;->c:Layd;

    .line 69
    iget-object v0, p0, Layv;->c:Layd;

    invoke-virtual {v0, p0}, Layd;->a(Lcom/iflytek/yd/speech/SpeechHandlerCallback;)V

    .line 70
    return-void
.end method

.method static synthetic a(Layv;)Lays;
    .locals 1
    .param p0, "x0"    # Layv;

    .prologue
    .line 53
    iget-object v0, p0, Layv;->a:Lays;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resultItem"    # Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .prologue
    .line 342
    iget-object v1, p0, Layv;->i:Layo;

    if-eqz v1, :cond_0

    .line 343
    const/4 v1, 0x0

    iput-object v1, p0, Layv;->i:Layo;

    .line 345
    :cond_0
    new-instance v1, Layo;

    const/4 v2, -0x1

    invoke-direct {v1, p1, p2, v2}, Layo;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/translate/entity/TranslateResultItem;I)V

    iput-object v1, p0, Layv;->i:Layo;

    .line 346
    iget-object v1, p0, Layv;->i:Layo;

    new-instance v2, Layv$a;

    invoke-direct {v2, p0, p2}, Layv$a;-><init>(Layv;Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V

    invoke-virtual {v1, v2}, Layo;->a(Layo$a;)V

    .line 347
    iget-object v1, p0, Layv;->i:Layo;

    invoke-virtual {v1}, Layo;->c()Landroid/view/View;

    move-result-object v0

    .line 348
    .local v0, "view":Landroid/view/View;
    new-instance v1, Layx;

    iget-object v2, p0, Layv;->d:Landroid/content/Context;

    const v3, 0x7f080037

    invoke-direct {v1, v2, v3}, Layx;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Layv;->h:Layx;

    .line 349
    iget-object v1, p0, Layv;->h:Layx;

    invoke-virtual {v1, v0}, Layx;->setContentView(Landroid/view/View;)V

    .line 350
    iget-object v1, p0, Layv;->h:Layx;

    invoke-virtual {v1}, Layx;->show()V

    .line 352
    return-void
.end method

.method public static synthetic b(Layv;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Layv;

    .prologue
    .line 53
    iget-object v0, p0, Layv;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Layv;)Layx;
    .locals 1
    .param p0, "x0"    # Layv;

    .prologue
    .line 53
    iget-object v0, p0, Layv;->h:Layx;

    return-object v0
.end method

.method static synthetic d(Layv;)Layd;
    .locals 1
    .param p0, "x0"    # Layv;

    .prologue
    .line 53
    iget-object v0, p0, Layv;->c:Layd;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Layv;->b:Layl;

    invoke-virtual {v0}, Layl;->a()V

    .line 83
    return-void
.end method

.method public a(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V
    .locals 1
    .param p1, "resultItem"    # Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .prologue
    .line 259
    iget-object v0, p0, Layv;->d:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Layv;->a(Landroid/content/Context;Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V

    .line 260
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Layv;->d:Landroid/content/Context;

    const-string/jumbo v2, "\u56fe\u7247\u88ab\u5220\u9664\uff0c\u8bf7\u91cd\u9009\u56fe\u7247"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Layv;->b:Layl;

    invoke-virtual {v1, p1}, Layl;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Layv;->c:Layd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Layv;->c:Layd;

    iget-object v1, p0, Layv;->g:Lju;

    invoke-virtual {v0, v1}, Layd;->b(Lju;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Layv;->c:Layd;

    iget-object v1, p0, Layv;->g:Lju;

    invoke-virtual {v0, v1}, Layd;->a(Lju;)V

    .line 397
    :cond_0
    return-void
.end method

.method public b(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V
    .locals 4
    .param p1, "resultItem"    # Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .prologue
    .line 264
    iget-object v0, p0, Layv;->d:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Layv;->d:Landroid/content/Context;

    const-string/jumbo v1, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u5f00\u542f\u7f51\u7edc\u540e\u518d\u5c1d\u8bd5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Layv;->c:Layd;

    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslatedLang()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Layv;->g:Lju;

    invoke-virtual {v0, v1, v2, v3}, Layd;->a(Ljava/lang/String;Ljava/lang/String;Lju;)V

    .line 269
    iget-object v0, p0, Layv;->d:Landroid/content/Context;

    invoke-static {v0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "play"

    invoke-virtual {v0, v1}, Lxq;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Layv;->d:Landroid/content/Context;

    invoke-static {v0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "invalidTra"

    invoke-virtual {v0, v1}, Lxq;->g(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Layv;->a:Lays;

    const-string/jumbo v1, "\u8d85\u51fa\u5b57\u7b26\u9650\u5236\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9"

    invoke-interface {v0, v1}, Lays;->a(Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    .line 92
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->EnToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-static {v0}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    .line 93
    iget-object v0, p0, Layv;->c:Layd;

    const-string/jumbo v1, "translation"

    const-string/jumbo v2, "input"

    invoke-virtual {v0, v1, p1, v2}, Layd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "TranslatePicPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TranslatePicPresenter result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V
    .locals 5
    .param p1, "resultItem"    # Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .prologue
    .line 275
    iget-object v0, p0, Layv;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getOriginal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "translatePic"

    iget-object v4, p0, Layv;->f:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    invoke-static {v0, v1, v2, v3, v4}, Lazu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V

    .line 276
    iget-object v0, p0, Layv;->d:Landroid/content/Context;

    invoke-static {v0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "share"

    invoke-virtual {v0, v1}, Lxq;->f(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public d(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V
    .locals 4
    .param p1, "resultItem"    # Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .prologue
    .line 400
    iget-object v1, p0, Layv;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/base/clipboard/ClipboardManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/base/clipboard/ClipboardManager;

    move-result-object v0

    .line 401
    .local v0, "cm":Lcom/iflytek/base/clipboard/ClipboardManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getOriginal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/clipboard/ClipboardManager;->copy(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v1, p0, Layv;->d:Landroid/content/Context;

    const-string/jumbo v2, "\u590d\u5236\u6210\u529f!"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 403
    iget-object v1, p0, Layv;->d:Landroid/content/Context;

    invoke-static {v1}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v1

    const-string/jumbo v2, "copy"

    invoke-virtual {v1, v2}, Lxq;->f(Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public e(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V
    .locals 3
    .param p1, "resultItem"    # Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .prologue
    .line 407
    iget-object v1, p0, Layv;->d:Landroid/content/Context;

    invoke-static {v1}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v1

    const-string/jumbo v2, "fullScreen"

    invoke-virtual {v1, v2}, Lxq;->f(Ljava/lang/String;)V

    .line 408
    if-eqz p1, :cond_0

    .line 409
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Layv;->d:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/translate/ui/TranslateFullScreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 410
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "extraContent"

    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    iget-object v1, p0, Layv;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 413
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 2
    .param p1, "viaAsrResults"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 188
    const-string/jumbo v0, "TranslatePicPresenter"

    const-string/jumbo v1, "TranslatePicPresenter\u5f97\u5230\u7ffb\u8bd1\u7ed3\u679c"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 192
    iget-object v0, p0, Layv;->c:Layd;

    new-instance v1, Layv$2;

    invoke-direct {v1, p0}, Layv$2;-><init>(Layv;)V

    invoke-virtual {v0, p1, v1}, Layd;->a([Lcom/iflytek/yd/speech/ViaAsrResult;Laxz;)V

    .line 218
    :goto_0
    return-void

    .line 214
    :cond_0
    const-string/jumbo v0, "TranslatePicPresenter"

    const-string/jumbo v1, "TranslatePicPresenter result is empty"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Layv;->d:Landroid/content/Context;

    invoke-static {v0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "invalidTra"

    invoke-virtual {v0, v1}, Lxq;->g(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Layv;->a:Lays;

    const-string/jumbo v1, "\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-interface {v0, v1}, Lays;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleParticalResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 0
    .param p1, "viaAsrResults"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 184
    return-void
.end method

.method public updateUIAfterResult()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public updateUIInCancelState()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public updateUIInErrorState(III)V
    .locals 2
    .param p1, "errTitleId"    # I
    .param p2, "errDetailId"    # I
    .param p3, "errId"    # I

    .prologue
    .line 227
    const-string/jumbo v0, "TranslatePicPresenter"

    const-string/jumbo v1, "updateUIInErrorState"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const v0, 0xc3508

    if-eq p3, v0, :cond_0

    const v0, 0xc38f1

    if-eq p3, v0, :cond_0

    const v0, 0xc3504

    if-ne p3, v0, :cond_1

    .line 232
    :cond_0
    iget-object v0, p0, Layv;->a:Lays;

    const-string/jumbo v1, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-interface {v0, v1}, Lays;->a(Ljava/lang/String;)V

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Layv;->d:Landroid/content/Context;

    invoke-static {v0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "invalidTra"

    invoke-virtual {v0, v1}, Lxq;->g(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Layv;->a:Lays;

    const-string/jumbo v1, "\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-interface {v0, v1}, Lays;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateUIInInitState(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    return-void
.end method

.method public updateUIInRecodingState()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public updateUIInRecodingState(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 169
    return-void
.end method

.method public updateUIInSNState()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public updateUIInTimeout()V
    .locals 2

    .prologue
    .line 252
    const-string/jumbo v0, "TranslatePicPresenter"

    const-string/jumbo v1, "updateUIInTimeout"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Layv;->d:Landroid/content/Context;

    invoke-static {v0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "invalidTra"

    invoke-virtual {v0, v1}, Lxq;->g(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Layv;->a:Lays;

    const-string/jumbo v1, "\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-interface {v0, v1}, Lays;->a(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public updateUIInWaitingResultState()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method
