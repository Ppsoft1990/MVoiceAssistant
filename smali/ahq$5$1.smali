.class Lahq$5$1;
.super Ljava/lang/Object;
.source "HomeSplashScreenHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahq$5;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahq$5;


# direct methods
.method constructor <init>(Lahq$5;)V
    .locals 0
    .param p1, "this$1"    # Lahq$5;

    .prologue
    .line 464
    iput-object p1, p0, Lahq$5$1;->a:Lahq$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 467
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 468
    iget-object v2, p0, Lahq$5$1;->a:Lahq$5;

    iget-object v2, v2, Lahq$5;->a:Lahq;

    invoke-virtual {v2}, Lahq;->k()V

    .line 469
    iget-object v2, p0, Lahq$5$1;->a:Lahq$5;

    iget-object v2, v2, Lahq$5;->a:Lahq;

    invoke-virtual {v2}, Lahq;->q()Lahw;

    move-result-object v2

    iget-object v3, p0, Lahq$5$1;->a:Lahq$5;

    iget-object v3, v3, Lahq$5;->a:Lahq;

    invoke-static {v3}, Lahq;->s(Lahq;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lahw;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 470
    iget-object v2, p0, Lahq$5$1;->a:Lahq$5;

    iget-object v2, v2, Lahq$5;->a:Lahq;

    invoke-static {v2}, Lahq;->n(Lahq;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 471
    iget-object v2, p0, Lahq$5$1;->a:Lahq$5;

    iget-object v2, v2, Lahq$5;->a:Lahq;

    invoke-static {v2}, Lahq;->n(Lahq;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "platformid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 473
    .local v1, "platFormId":I
    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 474
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 475
    .local v0, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_id"

    const-string/jumbo v3, "miguLevel"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v2, p0, Lahq$5$1;->a:Lahq$5;

    iget-object v2, v2, Lahq$5;->a:Lahq;

    invoke-virtual {v2}, Lahq;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90013"

    .line 477
    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 485
    .end local v0    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "platFormId":I
    :cond_0
    :goto_0
    return-void

    .line 479
    .restart local v1    # "platFormId":I
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 480
    .restart local v0    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_id"

    iget-object v3, p0, Lahq$5$1;->a:Lahq$5;

    iget-object v3, v3, Lahq$5;->a:Lahq;

    invoke-static {v3}, Lahq;->n(Lahq;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v2, p0, Lahq$5$1;->a:Lahq$5;

    iget-object v2, v2, Lahq$5;->a:Lahq;

    invoke-virtual {v2}, Lahq;->p()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90013"

    .line 482
    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
