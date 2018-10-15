.class public final enum Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;
.super Ljava/lang/Enum;
.source "GPTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/GPTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TASK_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

.field public static final enum DELETE_PACKAGE:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

.field public static final enum INIT:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

.field public static final enum INSTALL_PACKAGE:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

.field public static final enum START_ACTIVITY:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

.field public static final enum START_PACKAGE:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

.field public static final enum START_SERVICE:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

.field public static final enum STOP_PACKAGE:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;


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
    new-instance v0, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    const-string/jumbo v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->INIT:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    .line 11
    new-instance v0, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    const-string/jumbo v1, "INSTALL_PACKAGE"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->INSTALL_PACKAGE:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    .line 12
    new-instance v0, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    const-string/jumbo v1, "DELETE_PACKAGE"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->DELETE_PACKAGE:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    .line 13
    new-instance v0, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    const-string/jumbo v1, "START_PACKAGE"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->START_PACKAGE:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    .line 14
    new-instance v0, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    const-string/jumbo v1, "START_ACTIVITY"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->START_ACTIVITY:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    .line 15
    new-instance v0, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    const-string/jumbo v1, "START_SERVICE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->START_SERVICE:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    .line 16
    new-instance v0, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    const-string/jumbo v1, "STOP_PACKAGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->STOP_PACKAGE:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    .line 9
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    sget-object v1, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->INIT:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->INSTALL_PACKAGE:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->DELETE_PACKAGE:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->START_PACKAGE:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->START_ACTIVITY:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->START_SERVICE:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->STOP_PACKAGE:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->$VALUES:[Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->$VALUES:[Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    invoke-virtual {v0}, [Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    return-object v0
.end method
