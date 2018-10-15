.class public final enum Lcom/iflytek/viafly/push/data/entities/MsgLifetime;
.super Ljava/lang/Enum;
.source "MsgLifetime.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/push/data/entities/MsgLifetime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

.field public static final enum Dated:Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

.field public static final enum InPeriod:Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

.field public static final enum UnEffective:Lcom/iflytek/viafly/push/data/entities/MsgLifetime;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    const-string/jumbo v1, "UnEffective"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->UnEffective:Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    .line 16
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    const-string/jumbo v1, "InPeriod"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->InPeriod:Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    .line 19
    new-instance v0, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    const-string/jumbo v1, "Dated"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->Dated:Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->UnEffective:Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->InPeriod:Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->Dated:Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->$VALUES:[Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/push/data/entities/MsgLifetime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {}, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->values()[Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->toList([Lcom/iflytek/viafly/push/data/entities/MsgLifetime;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toList([Lcom/iflytek/viafly/push/data/entities/MsgLifetime;)Ljava/util/List;
    .locals 4
    .param p0, "msgLifetimes"    # [Lcom/iflytek/viafly/push/data/entities/MsgLifetime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/iflytek/viafly/push/data/entities/MsgLifetime;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/push/data/entities/MsgLifetime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_2

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 29
    :cond_1
    return-object v1

    .line 25
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MsgLifetime;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p0, v2

    .line 27
    .local v0, "item":Lcom/iflytek/viafly/push/data/entities/MsgLifetime;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/push/data/entities/MsgLifetime;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/push/data/entities/MsgLifetime;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->$VALUES:[Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    return-object v0
.end method
