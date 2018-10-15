.class final enum Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;
.super Ljava/lang/Enum;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "IconType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

.field public static final enum LARGE:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

.field public static final enum NORMAL:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

.field public static final enum SMALL:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1380
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->NORMAL:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    .line 1381
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    const-string/jumbo v1, "SMALL"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->SMALL:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    .line 1382
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    const-string/jumbo v1, "LARGE"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->LARGE:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    .line 1379
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->NORMAL:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->SMALL:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->LARGE:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->$VALUES:[Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

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
    .line 1379
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1379
    const-class v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;
    .locals 1

    .prologue
    .line 1379
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->$VALUES:[Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    invoke-virtual {v0}, [Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    return-object v0
.end method
