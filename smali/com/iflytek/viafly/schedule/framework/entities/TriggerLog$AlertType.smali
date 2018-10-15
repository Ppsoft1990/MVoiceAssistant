.class public final enum Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;
.super Ljava/lang/Enum;
.source "TriggerLog.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlertType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

.field public static final enum alert:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

.field public static final alert_VALUE:I = 0x0

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum wakeup:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

.field public static final wakeup_VALUE:I = 0x1


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    const-string/jumbo v1, "alert"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->alert:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    .line 55
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    const-string/jumbo v1, "wakeup"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->wakeup:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->alert:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->wakeup:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    .line 77
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput p4, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->value:I

    .line 88
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 65
    packed-switch p0, :pswitch_data_0

    .line 68
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 66
    :pswitch_0
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->alert:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    goto :goto_0

    .line 67
    :pswitch_1
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->wakeup:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;->value:I

    return v0
.end method
