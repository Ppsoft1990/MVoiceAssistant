.class final enum Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;
.super Ljava/lang/Enum;
.source "HomeWakeupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HomeLifeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

.field public static final enum onCreate:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

.field public static final enum onDestroy:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

.field public static final enum onPause:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

.field public static final enum onResume:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

.field public static final enum onStart:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

.field public static final enum onStop:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    const-string/jumbo v1, "onCreate"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onCreate:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    new-instance v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    const-string/jumbo v1, "onStart"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onStart:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    new-instance v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    const-string/jumbo v1, "onResume"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onResume:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    new-instance v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    const-string/jumbo v1, "onPause"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onPause:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    new-instance v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    const-string/jumbo v1, "onStop"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onStop:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    new-instance v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    const-string/jumbo v1, "onDestroy"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onDestroy:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    sget-object v1, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onCreate:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onStart:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onResume:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onPause:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onStop:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onDestroy:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->$VALUES:[Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->$VALUES:[Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    return-object v0
.end method
