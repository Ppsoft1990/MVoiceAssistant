.class public abstract Lcom/migu/voiceads/MIGUBootScreenAdDataRef;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBootScreenAdDataItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/migu/voiceads/MIGUBootScreenAdDataItemRef;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImageCache()Lorg/json/JSONArray;
.end method
