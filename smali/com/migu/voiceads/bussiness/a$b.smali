.class public final enum Lcom/migu/voiceads/bussiness/a$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/migu/voiceads/bussiness/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/migu/voiceads/bussiness/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/migu/voiceads/bussiness/a$b;

.field public static final enum b:Lcom/migu/voiceads/bussiness/a$b;

.field public static final enum c:Lcom/migu/voiceads/bussiness/a$b;

.field public static final enum d:Lcom/migu/voiceads/bussiness/a$b;

.field private static final synthetic e:[Lcom/migu/voiceads/bussiness/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/migu/voiceads/bussiness/a$b;

    const-string/jumbo v1, "init"

    invoke-direct {v0, v1, v2}, Lcom/migu/voiceads/bussiness/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/migu/voiceads/bussiness/a$b;->a:Lcom/migu/voiceads/bussiness/a$b;

    new-instance v0, Lcom/migu/voiceads/bussiness/a$b;

    const-string/jumbo v1, "start"

    invoke-direct {v0, v1, v3}, Lcom/migu/voiceads/bussiness/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/migu/voiceads/bussiness/a$b;->b:Lcom/migu/voiceads/bussiness/a$b;

    new-instance v0, Lcom/migu/voiceads/bussiness/a$b;

    const-string/jumbo v1, "timeout"

    invoke-direct {v0, v1, v4}, Lcom/migu/voiceads/bussiness/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/migu/voiceads/bussiness/a$b;->c:Lcom/migu/voiceads/bussiness/a$b;

    new-instance v0, Lcom/migu/voiceads/bussiness/a$b;

    const-string/jumbo v1, "success"

    invoke-direct {v0, v1, v5}, Lcom/migu/voiceads/bussiness/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/migu/voiceads/bussiness/a$b;->d:Lcom/migu/voiceads/bussiness/a$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/migu/voiceads/bussiness/a$b;

    sget-object v1, Lcom/migu/voiceads/bussiness/a$b;->a:Lcom/migu/voiceads/bussiness/a$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/migu/voiceads/bussiness/a$b;->b:Lcom/migu/voiceads/bussiness/a$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/migu/voiceads/bussiness/a$b;->c:Lcom/migu/voiceads/bussiness/a$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/migu/voiceads/bussiness/a$b;->d:Lcom/migu/voiceads/bussiness/a$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/migu/voiceads/bussiness/a$b;->e:[Lcom/migu/voiceads/bussiness/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/migu/voiceads/bussiness/a$b;
    .locals 1

    const-class v0, Lcom/migu/voiceads/bussiness/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/bussiness/a$b;

    return-object v0
.end method

.method public static values()[Lcom/migu/voiceads/bussiness/a$b;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/migu/voiceads/bussiness/a$b;->e:[Lcom/migu/voiceads/bussiness/a$b;

    array-length v1, v0

    new-array v2, v1, [Lcom/migu/voiceads/bussiness/a$b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
