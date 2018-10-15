.class public Lcom/migu/voiceads/bussiness/a/b;
.super Lcom/migu/voiceads/MIGUBootScreenAdDataRef;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/migu/voiceads/MIGUBootScreenAdDataItemRef;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/migu/voiceads/MIGUBootScreenAdDataRef;-><init>()V

    return-void
.end method


# virtual methods
.method public getBootScreenAdDataItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/migu/voiceads/MIGUBootScreenAdDataItemRef;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/b;->a:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageCache()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/b;->b:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/b;->b:Lorg/json/JSONArray;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
