.class public final enum Lcom/iflytek/common/cmccauth/log/AuthScene;
.super Ljava/lang/Enum;
.source "AuthScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/common/cmccauth/log/AuthScene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/common/cmccauth/log/AuthScene;

.field public static final enum BACKGROUND_HOME_START:Lcom/iflytek/common/cmccauth/log/AuthScene;

.field public static final enum BACKGROUND_NETCHANGED:Lcom/iflytek/common/cmccauth/log/AuthScene;

.field public static final enum BACKGROUND_OTHERAPP:Lcom/iflytek/common/cmccauth/log/AuthScene;

.field public static final enum BACKGROUND_PUSH:Lcom/iflytek/common/cmccauth/log/AuthScene;

.field public static final enum BACKGROUND_RENEW_TOKEN:Lcom/iflytek/common/cmccauth/log/AuthScene;

.field public static final enum BACKGROUND_SERVER_PARAM:Lcom/iflytek/common/cmccauth/log/AuthScene;

.field public static final enum FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v1, "BACKGROUND_HOME_START"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/common/cmccauth/log/AuthScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_HOME_START:Lcom/iflytek/common/cmccauth/log/AuthScene;

    .line 17
    new-instance v0, Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v1, "BACKGROUND_NETCHANGED"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/common/cmccauth/log/AuthScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_NETCHANGED:Lcom/iflytek/common/cmccauth/log/AuthScene;

    .line 22
    new-instance v0, Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v1, "BACKGROUND_PUSH"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/common/cmccauth/log/AuthScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_PUSH:Lcom/iflytek/common/cmccauth/log/AuthScene;

    .line 27
    new-instance v0, Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v1, "BACKGROUND_SERVER_PARAM"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/common/cmccauth/log/AuthScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_SERVER_PARAM:Lcom/iflytek/common/cmccauth/log/AuthScene;

    .line 32
    new-instance v0, Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v1, "BACKGROUND_OTHERAPP"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/common/cmccauth/log/AuthScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_OTHERAPP:Lcom/iflytek/common/cmccauth/log/AuthScene;

    .line 37
    new-instance v0, Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v1, "FORGROUND_ACTIVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/common/cmccauth/log/AuthScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    .line 42
    new-instance v0, Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v1, "BACKGROUND_RENEW_TOKEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/common/cmccauth/log/AuthScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_RENEW_TOKEN:Lcom/iflytek/common/cmccauth/log/AuthScene;

    .line 7
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/iflytek/common/cmccauth/log/AuthScene;

    sget-object v1, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_HOME_START:Lcom/iflytek/common/cmccauth/log/AuthScene;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_NETCHANGED:Lcom/iflytek/common/cmccauth/log/AuthScene;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_PUSH:Lcom/iflytek/common/cmccauth/log/AuthScene;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_SERVER_PARAM:Lcom/iflytek/common/cmccauth/log/AuthScene;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_OTHERAPP:Lcom/iflytek/common/cmccauth/log/AuthScene;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_RENEW_TOKEN:Lcom/iflytek/common/cmccauth/log/AuthScene;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/common/cmccauth/log/AuthScene;->$VALUES:[Lcom/iflytek/common/cmccauth/log/AuthScene;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/log/AuthScene;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/iflytek/common/cmccauth/log/AuthScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/cmccauth/log/AuthScene;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/common/cmccauth/log/AuthScene;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/iflytek/common/cmccauth/log/AuthScene;->$VALUES:[Lcom/iflytek/common/cmccauth/log/AuthScene;

    invoke-virtual {v0}, [Lcom/iflytek/common/cmccauth/log/AuthScene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/common/cmccauth/log/AuthScene;

    return-object v0
.end method
