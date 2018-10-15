.class public Laab;
.super Ljava/lang/Object;
.source "PhoneNumClassifyItem.java"


# annotations
.annotation runtime Lbbw;
    a = "phone_classify"
.end annotation


# instance fields
.field private a:[B
    .annotation runtime Lbbu;
        a = "phoneClassify"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Laab;->a:[B

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Laab;->a:[B

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/viafly/dial/cipher/NativeCipher;->b([BLandroid/content/Context;)[B

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method
