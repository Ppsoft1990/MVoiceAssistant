.class public final enum Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;
.super Ljava/lang/Enum;
.source "AuthGetTokenState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

.field public static final enum failure:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

.field public static final enum getagain:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

.field public static final enum nopermission:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

.field public static final enum overtime:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

.field public static final enum success:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

.field public static final enum unknown:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    const-string/jumbo v1, "success"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->success:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    .line 12
    new-instance v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    const-string/jumbo v1, "failure"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->failure:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    .line 14
    new-instance v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    const-string/jumbo v1, "getagain"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->getagain:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    .line 16
    new-instance v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    const-string/jumbo v1, "overtime"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->overtime:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    .line 18
    new-instance v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    const-string/jumbo v1, "nopermission"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->nopermission:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    .line 20
    new-instance v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    const-string/jumbo v1, "unknown"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->unknown:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    sget-object v1, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->success:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->failure:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->getagain:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->overtime:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->nopermission:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->unknown:Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->$VALUES:[Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->$VALUES:[Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    invoke-virtual {v0}, [Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/common/cmccauth/entities/AuthGetTokenState;

    return-object v0
.end method
