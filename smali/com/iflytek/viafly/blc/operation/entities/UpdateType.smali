.class public final enum Lcom/iflytek/viafly/blc/operation/entities/UpdateType;
.super Ljava/lang/Enum;
.source "UpdateType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/blc/operation/entities/UpdateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

.field public static final enum Force:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

.field public static final enum NoNeed:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

.field public static final enum Recommend:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    const-string/jumbo v1, "NoNeed"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->NoNeed:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    new-instance v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    const-string/jumbo v1, "Recommend"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->Recommend:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    new-instance v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    const-string/jumbo v1, "Force"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->Force:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    sget-object v1, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->NoNeed:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->Recommend:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->Force:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->$VALUES:[Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/blc/operation/entities/UpdateType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/blc/operation/entities/UpdateType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->$VALUES:[Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    return-object v0
.end method
