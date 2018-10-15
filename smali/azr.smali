.class public Lazr;
.super Ljava/lang/Object;
.source "PicChooseManager.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lazd$a;

.field private c:Landroid/content/Context;

.field private d:Lcom/iflytek/viafly/im/ImageUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "PicChooseManager"

    iput-object v0, p0, Lazr;->a:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lazr;->c:Landroid/content/Context;

    .line 35
    new-instance v0, Lcom/iflytek/viafly/im/ImageUtils;

    invoke-direct {v0}, Lcom/iflytek/viafly/im/ImageUtils;-><init>()V

    iput-object v0, p0, Lazr;->d:Lcom/iflytek/viafly/im/ImageUtils;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lazd$a;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lazd$a;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "PicChooseManager"

    iput-object v0, p0, Lazr;->a:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lazr;->c:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/iflytek/viafly/im/ImageUtils;

    invoke-direct {v0}, Lcom/iflytek/viafly/im/ImageUtils;-><init>()V

    iput-object v0, p0, Lazr;->d:Lcom/iflytek/viafly/im/ImageUtils;

    .line 30
    iput-object p2, p0, Lazr;->b:Lazd$a;

    .line 31
    return-void
.end method

.method private a(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lazr;->b:Lazd$a;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lazr;->b:Lazd$a;

    invoke-interface {v0, p1}, Lazd$a;->onFailed(I)V

    .line 106
    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 59
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 60
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 67
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    const-string/jumbo v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    :try_start_0
    iget-object v2, p0, Lazr;->c:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/16 v3, 0x7d4

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_1
    return-void

    .line 64
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 65
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const v2, 0x33456

    invoke-direct {p0, v2}, Lazr;->a(I)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lazr;->c()V

    .line 54
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x7d4

    .line 76
    const-string/jumbo v1, "PicChooseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    if-ne p1, v4, :cond_3

    .line 78
    if-eqz p3, :cond_0

    .line 79
    iget-object v1, p0, Lazr;->d:Lcom/iflytek/viafly/im/ImageUtils;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/im/ImageUtils;->getImageAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "picUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    iget-object v1, p0, Lazr;->d:Lcom/iflytek/viafly/im/ImageUtils;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/im/ImageUtils;->isPicSupport(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lazr;->b:Lazd$a;

    invoke-interface {v1, v0}, Lazd$a;->onSuccess(Ljava/lang/String;)V

    .line 94
    .end local v0    # "picUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 85
    .restart local v0    # "picUrl":Ljava/lang/String;
    :cond_1
    const v1, 0x33453

    invoke-direct {p0, v1}, Lazr;->a(I)V

    goto :goto_0

    .line 88
    :cond_2
    const v1, 0x33456

    invoke-direct {p0, v1}, Lazr;->a(I)V

    goto :goto_0

    .line 91
    .end local v0    # "picUrl":Ljava/lang/String;
    :cond_3
    if-ne p1, v4, :cond_0

    .line 92
    const v1, 0x33452

    invoke-direct {p0, v1}, Lazr;->a(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lazr;->c:Landroid/content/Context;

    .line 98
    iput-object v0, p0, Lazr;->d:Lcom/iflytek/viafly/im/ImageUtils;

    .line 99
    return-void
.end method
