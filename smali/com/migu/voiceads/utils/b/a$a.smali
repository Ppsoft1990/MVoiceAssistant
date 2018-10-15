.class public final enum Lcom/migu/voiceads/utils/b/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/migu/voiceads/utils/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/migu/voiceads/utils/b/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/migu/voiceads/utils/b/a$a;

.field public static final enum b:Lcom/migu/voiceads/utils/b/a$a;

.field private static final synthetic c:[Lcom/migu/voiceads/utils/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/migu/voiceads/utils/b/a$a;

    const-string/jumbo v1, "INTERNAL_CACHE"

    invoke-direct {v0, v1, v2}, Lcom/migu/voiceads/utils/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/migu/voiceads/utils/b/a$a;->a:Lcom/migu/voiceads/utils/b/a$a;

    new-instance v0, Lcom/migu/voiceads/utils/b/a$a;

    const-string/jumbo v1, "EXTERNAL_CACHE"

    invoke-direct {v0, v1, v3}, Lcom/migu/voiceads/utils/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/migu/voiceads/utils/b/a$a;->b:Lcom/migu/voiceads/utils/b/a$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/migu/voiceads/utils/b/a$a;

    sget-object v1, Lcom/migu/voiceads/utils/b/a$a;->a:Lcom/migu/voiceads/utils/b/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/migu/voiceads/utils/b/a$a;->b:Lcom/migu/voiceads/utils/b/a$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/migu/voiceads/utils/b/a$a;->c:[Lcom/migu/voiceads/utils/b/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/migu/voiceads/utils/b/a$a;
    .locals 1

    const-class v0, Lcom/migu/voiceads/utils/b/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/b/a$a;

    return-object v0
.end method

.method public static values()[Lcom/migu/voiceads/utils/b/a$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/migu/voiceads/utils/b/a$a;->c:[Lcom/migu/voiceads/utils/b/a$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/migu/voiceads/utils/b/a$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
