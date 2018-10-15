.class public Lcom/migu/voiceads/b/c;
.super Ljava/lang/Object;


# static fields
.field public static a:[Ljava/lang/String;

.field public static b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "succes"

    aput-object v1, v0, v3

    const-string/jumbo v1, "network error"

    aput-object v1, v0, v4

    const-string/jumbo v1, "server error"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "invalid ad request"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "no fill"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "invalid ad unit id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "permission error"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "unknown error"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "request over limit"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "invalid appid"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ad page load timeout"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "ad page load error"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "invalid browser"

    aput-object v2, v0, v1

    sput-object v0, Lcom/migu/voiceads/b/c;->a:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "Error code"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Unexpected error"

    aput-object v1, v0, v4

    sput-object v0, Lcom/migu/voiceads/b/c;->b:[Ljava/lang/String;

    return-void
.end method
