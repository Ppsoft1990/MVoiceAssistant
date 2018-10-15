.class Laja$1;
.super Ljava/lang/Object;
.source "HomeBannerRequestHelper.java"

# interfaces
.implements Lcom/iflytek/viafly/ad/business/BannerADDataManager$BannerADResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laja;->a(Lajm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laja;


# direct methods
.method constructor <init>(Laja;)V
    .locals 0
    .param p1, "this$0"    # Laja;

    .prologue
    .line 31
    iput-object p1, p0, Laja$1;->a:Laja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerADResult(Lorg/json/JSONArray;)V
    .locals 3
    .param p1, "bannerADData"    # Lorg/json/JSONArray;

    .prologue
    .line 34
    if-eqz p1, :cond_0

    .line 35
    const-string/jumbo v0, "HomeBannerRequestHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bannerADData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Laja$1;->a:Laja;

    invoke-static {v0}, Laja;->a(Laja;)Lajm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Laja$1;->a:Laja;

    invoke-static {v0}, Laja;->a(Laja;)Lajm;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lajm;->onResult(Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method

.method public onBannerDateError()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Laja$1;->a:Laja;

    invoke-static {v0}, Laja;->a(Laja;)Lajm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Laja$1;->a:Laja;

    invoke-static {v0}, Laja;->a(Laja;)Lajm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lajm;->onError(I)V

    .line 47
    :cond_0
    return-void
.end method
