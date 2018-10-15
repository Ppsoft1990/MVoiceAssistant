.class public Lcom/migu/voiceads/utils/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/migu/voiceads/utils/download/a/b/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/migu/voiceads/utils/c/a$a;,
        Lcom/migu/voiceads/utils/c/a$b;,
        Lcom/migu/voiceads/utils/c/a$c;
    }
.end annotation


# static fields
.field private static e:Lcom/migu/voiceads/utils/c/a;

.field private static j:Lcom/migu/voiceads/utils/e;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/Activity;

.field private c:Landroid/os/Handler;

.field private d:Landroid/os/HandlerThread;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/migu/voiceads/utils/c/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/migu/voiceads/a/a;

.field private final h:I

.field private final i:I

.field private final k:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/migu/voiceads/utils/c/a;->h:I

    const v0, 0xea60

    iput v0, p0, Lcom/migu/voiceads/utils/c/a;->i:I

    new-instance v0, Lcom/migu/voiceads/utils/c/b;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/utils/c/b;-><init>(Lcom/migu/voiceads/utils/c/a;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/c/a;->k:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/migu/voiceads/utils/c/a;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/migu/voiceads/utils/c/a;->e()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/migu/voiceads/utils/c/a;
    .locals 2

    const-class v1, Lcom/migu/voiceads/utils/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/migu/voiceads/utils/c/a;->e:Lcom/migu/voiceads/utils/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/migu/voiceads/utils/c/a;

    invoke-direct {v0}, Lcom/migu/voiceads/utils/c/a;-><init>()V

    sput-object v0, Lcom/migu/voiceads/utils/c/a;->e:Lcom/migu/voiceads/utils/c/a;

    :cond_0
    sget-object v0, Lcom/migu/voiceads/utils/c/a;->e:Lcom/migu/voiceads/utils/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/migu/voiceads/utils/c/a;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/a;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/migu/voiceads/utils/c/a$b;)V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/migu/voiceads/utils/a;->a()Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/migu/voiceads/a/d;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/migu/voiceads/utils/c/a$b;->a()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "layout"

    const-string/jumbo v3, "iflyad_diag_layout"

    invoke-static {v1, v2, v3}, Lcom/migu/voiceads/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lcom/migu/voiceads/utils/b$a;

    invoke-direct {v1, v0}, Lcom/migu/voiceads/utils/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "string"

    const-string/jumbo v4, "iflyad_wifiAlertTitle"

    invoke-static {v2, v3, v4}, Lcom/migu/voiceads/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/migu/voiceads/utils/b$a;->a(Ljava/lang/String;)Lcom/migu/voiceads/utils/b$a;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "string"

    const-string/jumbo v5, "iflyad_updateCancelButton"

    invoke-static {v3, v4, v5}, Lcom/migu/voiceads/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/migu/voiceads/utils/c/q;

    invoke-direct {v4}, Lcom/migu/voiceads/utils/c/q;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/migu/voiceads/utils/b$a;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/migu/voiceads/utils/b$a;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "string"

    const-string/jumbo v5, "iflyad_updateConfirmButton"

    invoke-static {v3, v4, v5}, Lcom/migu/voiceads/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/migu/voiceads/utils/c/r;

    invoke-direct {v3, p1}, Lcom/migu/voiceads/utils/c/r;-><init>(Lcom/migu/voiceads/utils/c/a$b;)V

    invoke-virtual {v2, v0, v3}, Lcom/migu/voiceads/utils/b$a;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/migu/voiceads/utils/b$a;

    invoke-virtual {v1}, Lcom/migu/voiceads/utils/b$a;->a()Lcom/migu/voiceads/utils/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "\u5f53\u524d\u4e3a\u975ewifi\u73af\u5883\uff0c\u662f\u5426\u7ee7\u7eed\u4e0b\u8f7d\uff1f"

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u4e0b\u8f7d"

    new-instance v2, Lcom/migu/voiceads/utils/c/s;

    invoke-direct {v2, p1}, Lcom/migu/voiceads/utils/c/s;-><init>(Lcom/migu/voiceads/utils/c/a$b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/migu/voiceads/utils/c/c;

    invoke-direct {v2}, Lcom/migu/voiceads/utils/c/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1
.end method

.method static synthetic a(Landroid/app/Activity;Lcom/migu/voiceads/utils/c/a$c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/migu/voiceads/utils/c/a;->b(Landroid/app/Activity;Lcom/migu/voiceads/utils/c/a$c;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    new-instance v0, Lcom/migu/voiceads/utils/c/i;

    invoke-direct {v0, p0, p1}, Lcom/migu/voiceads/utils/c/i;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/migu/voiceads/utils/c/k;

    invoke-direct {v0, p0, p1}, Lcom/migu/voiceads/utils/c/k;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/migu/voiceads/utils/c/a;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/migu/voiceads/utils/c/a;->b(Lorg/json/JSONArray;)V

    return-void
.end method

.method public static a(Lcom/migu/voiceads/utils/e;)V
    .locals 0

    sput-object p0, Lcom/migu/voiceads/utils/c/a;->j:Lcom/migu/voiceads/utils/e;

    return-void
.end method

.method static synthetic b(Lcom/migu/voiceads/utils/c/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/a;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private static b(Landroid/app/Activity;Lcom/migu/voiceads/utils/c/a$c;)V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/migu/voiceads/utils/a;->a()Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    :goto_0
    if-nez p0, :cond_0

    :try_start_1
    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "context null"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout"

    const-string/jumbo v2, "iflyad_diag_layout"

    invoke-static {v0, v1, v2}, Lcom/migu/voiceads/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/migu/voiceads/utils/b$a;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/utils/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "string"

    const-string/jumbo v3, "iflyad_updateTitle"

    invoke-static {v1, v2, v3}, Lcom/migu/voiceads/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/b$a;->a(Ljava/lang/String;)Lcom/migu/voiceads/utils/b$a;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "string"

    const-string/jumbo v4, "iflyad_updateCancelButton"

    invoke-static {v2, v3, v4}, Lcom/migu/voiceads/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/migu/voiceads/utils/c/d;

    invoke-direct {v3}, Lcom/migu/voiceads/utils/c/d;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/migu/voiceads/utils/b$a;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/migu/voiceads/utils/b$a;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "string"

    const-string/jumbo v4, "iflyad_updateConfirmButton"

    invoke-static {v2, v3, v4}, Lcom/migu/voiceads/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/migu/voiceads/utils/c/e;

    invoke-direct {v3, p1}, Lcom/migu/voiceads/utils/c/e;-><init>(Lcom/migu/voiceads/utils/c/a$c;)V

    invoke-virtual {v1, v2, v3}, Lcom/migu/voiceads/utils/b$a;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/migu/voiceads/utils/b$a;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/b$a;->a()Lcom/migu/voiceads/utils/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u786e\u8ba4\u4e0b\u8f7d\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u4e0b\u8f7d"

    new-instance v2, Lcom/migu/voiceads/utils/c/f;

    invoke-direct {v2, p1}, Lcom/migu/voiceads/utils/c/f;-><init>(Lcom/migu/voiceads/utils/c/a$c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/migu/voiceads/utils/c/g;

    invoke-direct {v2}, Lcom/migu/voiceads/utils/c/g;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/migu/voiceads/utils/e;)V
    .locals 0

    sput-object p0, Lcom/migu/voiceads/utils/c/a;->j:Lcom/migu/voiceads/utils/e;

    return-void
.end method

.method private declared-synchronized b(Lorg/json/JSONArray;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/migu/voiceads/utils/c/a;->a(Lorg/json/JSONArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d()Lcom/migu/voiceads/utils/e;
    .locals 1

    sget-object v0, Lcom/migu/voiceads/utils/c/a;->j:Lcom/migu/voiceads/utils/e;

    return-object v0
.end method

.method private e()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "download"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/c/a;->d:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/a;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/migu/voiceads/utils/c/h;

    iget-object v1, p0, Lcom/migu/voiceads/utils/c/a;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/migu/voiceads/utils/c/h;-><init>(Lcom/migu/voiceads/utils/c/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/c/a;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "downloadError  errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/migu/voiceads/utils/c/a;->g:Lcom/migu/voiceads/a/a;

    const-string/jumbo v1, "download_alert"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/migu/voiceads/utils/c/m;

    invoke-direct {v0, p0, p2}, Lcom/migu/voiceads/utils/c/m;-><init>(Lcom/migu/voiceads/utils/c/a;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    new-instance v0, Lcom/migu/voiceads/utils/c/o;

    invoke-direct {v0, p0, p2}, Lcom/migu/voiceads/utils/c/o;-><init>(Lcom/migu/voiceads/utils/c/a;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/migu/voiceads/utils/c/a;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/utils/c/a;->a:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/c/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/voiceads/utils/download/a/b/a;->a(Landroid/content/Context;)Lcom/migu/voiceads/utils/download/a/b/a;

    move-result-object v0

    const-string/jumbo v1, "Ad_Android_SDK"

    invoke-virtual {v0, v1, p0}, Lcom/migu/voiceads/utils/download/a/b/a;->a(Ljava/lang/String;Lcom/migu/voiceads/utils/download/a/b/a$b;)V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.migu.download.finished"

    if-ne v0, v2, :cond_1

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v2, "download finished"

    invoke-static {v0, v2}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "\u79fb\u9664\u5e7f\u64ad start"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/a;->c:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/c/a$a;

    iget-object v3, v0, Lcom/migu/voiceads/utils/c/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput v3, v0, Lcom/migu/voiceads/utils/c/a$a;->h:I

    iget-object v3, v0, Lcom/migu/voiceads/utils/c/a$a;->d:Lorg/json/JSONArray;

    invoke-direct {p0, v3}, Lcom/migu/voiceads/utils/c/a;->b(Lorg/json/JSONArray;)V

    iget-object v0, v0, Lcom/migu/voiceads/utils/c/a$a;->f:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lcom/migu/voiceads/utils/c/a;->b(Lorg/json/JSONArray;)V

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v3, "\u4e0b\u8f7d\u5b8c\u6210\u76d1\u63a7"

    invoke-static {v0, v3}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/a;->a:Landroid/content/Context;

    const-string/jumbo v3, "\u76d1\u63a7\uff1a\u4e0b\u8f7d\u5b8c\u6210"

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Lcom/migu/voiceads/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/c/a;->g:Lcom/migu/voiceads/a/a;

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/c/a;->a:Landroid/content/Context;

    const-string/jumbo v1, "start download ad"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/migu/voiceads/utils/c/a;->b()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/migu/voiceads/utils/c/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/migu/voiceads/utils/c/a$a;-><init>(Lcom/migu/voiceads/utils/c/a;Lcom/migu/voiceads/utils/c/a$a;)V

    const-string/jumbo v2, "\u6b63\u5728\u4e0b\u8f7d"

    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/migu/voiceads/utils/c/a$a;->a:Ljava/lang/String;

    const-string/jumbo v3, "package_name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/migu/voiceads/utils/c/a$a;->b:Ljava/lang/String;

    const-string/jumbo v3, "url_download_start"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, v1, Lcom/migu/voiceads/utils/c/a$a;->c:Lorg/json/JSONArray;

    const-string/jumbo v3, "url_download_success"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, v1, Lcom/migu/voiceads/utils/c/a$a;->d:Lorg/json/JSONArray;

    const-string/jumbo v3, "url_install_success"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, v1, Lcom/migu/voiceads/utils/c/a$a;->e:Lorg/json/JSONArray;

    const-string/jumbo v3, "url_install_start"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, v1, Lcom/migu/voiceads/utils/c/a$a;->f:Lorg/json/JSONArray;

    iput-object v2, v1, Lcom/migu/voiceads/utils/c/a$a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/voiceads/utils/download/a/b/a;->a(Landroid/content/Context;)Lcom/migu/voiceads/utils/download/a/b/a;

    move-result-object v0

    iget-object v2, v1, Lcom/migu/voiceads/utils/c/a$a;->g:Ljava/lang/String;

    iget-object v3, v1, Lcom/migu/voiceads/utils/c/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/migu/voiceads/utils/download/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/migu/voiceads/utils/c/a$a;->c:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lcom/migu/voiceads/utils/c/a;->b(Lorg/json/JSONArray;)V

    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4e0b\u8f7d\u5730\u5740\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/migu/voiceads/utils/c/a$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->h(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "\u5f00\u59cb\u4e0b\u8f7d\u76d1\u63a7"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/a;->a:Landroid/content/Context;

    const-string/jumbo v1, "\u76d1\u63a7\uff1a\u5f00\u59cb\u4e0b\u8f7d"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lorg/json/JSONArray;)V
    .locals 6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    :goto_1
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/migu/voiceads/utils/m;->a(Ljava/lang/String;Lcom/migu/voiceads/utils/j$a;)V

    const-string/jumbo v3, "Ad_Android_SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "report url: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/migu/voiceads/utils/k;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "monitor: no valid url"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public b()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/migu/voiceads/utils/c/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/migu/voiceads/utils/c/a;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "\u6ce8\u518c\u5e7f\u64ad"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/c/a;->a:Landroid/content/Context;

    const-string/jumbo v1, "\u6ce8\u518c\u5e7f\u64ad"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/c/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/migu/voiceads/utils/c/a;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "\u6ce8\u9500\u5e7f\u64ad"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
