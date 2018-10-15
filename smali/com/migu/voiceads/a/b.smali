.class public Lcom/migu/voiceads/a/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "http://adxserver.ad.cmvideo.cn/request/sdk10"

    sput-object v0, Lcom/migu/voiceads/a/b;->a:Ljava/lang/String;

    const-string/jumbo v0, "url_ad_download"

    sput-object v0, Lcom/migu/voiceads/a/b;->b:Ljava/lang/String;

    return-void
.end method
