.class public final enum Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;
.super Ljava/lang/Enum;
.source "SheduleOpLogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TriggerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;

.field public static final enum delay:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;

.field public static final enum normal:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;

    const-string/jumbo v1, "normal"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;->normal:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;

    .line 54
    new-instance v0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;

    const-string/jumbo v1, "delay"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;->delay:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;

    sget-object v1, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;->normal:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;->delay:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;->$VALUES:[Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;->$VALUES:[Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;

    return-object v0
.end method
