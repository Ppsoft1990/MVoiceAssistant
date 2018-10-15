.class Lahq$3$1;
.super Ljava/lang/Object;
.source "HomeSplashScreenHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahq$3;->onSplashADResult(Lorg/json/JSONObject;Lcom/migu/voiceads/MIGUNativeAdDataRef;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahq$3;


# direct methods
.method constructor <init>(Lahq$3;)V
    .locals 0
    .param p1, "this$1"    # Lahq$3;

    .prologue
    .line 247
    iput-object p1, p0, Lahq$3$1;->a:Lahq$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lahq$3$1;->a:Lahq$3;

    iget-object v0, v0, Lahq$3;->a:Lahq;

    invoke-virtual {v0}, Lahq;->h()V

    .line 252
    return-void
.end method
