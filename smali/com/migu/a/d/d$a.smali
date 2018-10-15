.class public final enum Lcom/migu/a/d/d$a;
.super Ljava/lang/Enum;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/migu/a/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/migu/a/d/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bf:Lcom/migu/a/d/d$a;

.field public static final enum bg:Lcom/migu/a/d/d$a;

.field public static final enum bh:Lcom/migu/a/d/d$a;

.field public static final enum bi:Lcom/migu/a/d/d$a;

.field public static final enum bj:Lcom/migu/a/d/d$a;

.field public static final enum bk:Lcom/migu/a/d/d$a;

.field public static final enum bl:Lcom/migu/a/d/d$a;

.field public static final enum bm:Lcom/migu/a/d/d$a;

.field private static final synthetic bn:[Lcom/migu/a/d/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/migu/a/d/d$a;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/migu/a/d/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/migu/a/d/d$a;->bf:Lcom/migu/a/d/d$a;

    new-instance v0, Lcom/migu/a/d/d$a;

    const-string/jumbo v1, "WIFI"

    invoke-direct {v0, v1, v4}, Lcom/migu/a/d/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/migu/a/d/d$a;->bg:Lcom/migu/a/d/d$a;

    new-instance v0, Lcom/migu/a/d/d$a;

    const-string/jumbo v1, "CMWAP"

    invoke-direct {v0, v1, v5}, Lcom/migu/a/d/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/migu/a/d/d$a;->bh:Lcom/migu/a/d/d$a;

    new-instance v0, Lcom/migu/a/d/d$a;

    const-string/jumbo v1, "CMNET"

    invoke-direct {v0, v1, v6}, Lcom/migu/a/d/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/migu/a/d/d$a;->bi:Lcom/migu/a/d/d$a;

    new-instance v0, Lcom/migu/a/d/d$a;

    const-string/jumbo v1, "UNWAP"

    invoke-direct {v0, v1, v7}, Lcom/migu/a/d/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/migu/a/d/d$a;->bj:Lcom/migu/a/d/d$a;

    new-instance v0, Lcom/migu/a/d/d$a;

    const-string/jumbo v1, "UNNET"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/migu/a/d/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/migu/a/d/d$a;->bk:Lcom/migu/a/d/d$a;

    new-instance v0, Lcom/migu/a/d/d$a;

    const-string/jumbo v1, "CTWAP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/migu/a/d/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/migu/a/d/d$a;->bl:Lcom/migu/a/d/d$a;

    new-instance v0, Lcom/migu/a/d/d$a;

    const-string/jumbo v1, "CTNET"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/migu/a/d/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/migu/a/d/d$a;->bm:Lcom/migu/a/d/d$a;

    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/migu/a/d/d$a;

    sget-object v1, Lcom/migu/a/d/d$a;->bf:Lcom/migu/a/d/d$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/migu/a/d/d$a;->bg:Lcom/migu/a/d/d$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/migu/a/d/d$a;->bh:Lcom/migu/a/d/d$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/migu/a/d/d$a;->bi:Lcom/migu/a/d/d$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/migu/a/d/d$a;->bj:Lcom/migu/a/d/d$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/migu/a/d/d$a;->bk:Lcom/migu/a/d/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/migu/a/d/d$a;->bl:Lcom/migu/a/d/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/migu/a/d/d$a;->bm:Lcom/migu/a/d/d$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/migu/a/d/d$a;->bn:[Lcom/migu/a/d/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/migu/a/d/d$a;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/migu/a/d/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/migu/a/d/d$a;

    return-object v0
.end method

.method public static values()[Lcom/migu/a/d/d$a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/migu/a/d/d$a;->bn:[Lcom/migu/a/d/d$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/migu/a/d/d$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
