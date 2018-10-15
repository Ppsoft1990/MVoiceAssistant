.class final Lauthcommon/ag$a;
.super Landroid/content/BroadcastReceiver;
.source "AbstractBaseSSO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lauthcommon/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lauthcommon/ag;


# direct methods
.method private constructor <init>(Lauthcommon/ag;)V
    .locals 0

    iput-object p1, p0, Lauthcommon/ag$a;->a:Lauthcommon/ag;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lauthcommon/ag;B)V
    .locals 0

    invoke-direct {p0, p1}, Lauthcommon/ag$a;-><init>(Lauthcommon/ag;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lauthcommon/ag$a;->a:Lauthcommon/ag;

    iget-object v0, v0, Lauthcommon/ag;->c:Lorg/json/JSONObject;

    const-string/jumbo v1, "level"

    const-string/jumbo v2, "level"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lauthcommon/ag$a;->a:Lauthcommon/ag;

    iget-object v0, v0, Lauthcommon/ag;->c:Lorg/json/JSONObject;

    const-string/jumbo v1, "scale"

    const-string/jumbo v2, "scale"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lauthcommon/ag$a;->a:Lauthcommon/ag;

    iget-object v0, v0, Lauthcommon/ag;->c:Lorg/json/JSONObject;

    const-string/jumbo v1, "technology"

    const-string/jumbo v2, "technology"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lauthcommon/ag$a;->a:Lauthcommon/ag;

    iget-object v0, v0, Lauthcommon/ag;->c:Lorg/json/JSONObject;

    const-string/jumbo v1, "temperature"

    const-string/jumbo v2, "temperature"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lauthcommon/ag$a;->a:Lauthcommon/ag;

    iget-object v0, v0, Lauthcommon/ag;->c:Lorg/json/JSONObject;

    const-string/jumbo v1, "voltage"

    const-string/jumbo v2, "voltage"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
