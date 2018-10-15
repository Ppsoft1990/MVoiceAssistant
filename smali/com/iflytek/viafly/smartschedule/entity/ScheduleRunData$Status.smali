.class public final enum Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;
.super Ljava/lang/Enum;
.source "ScheduleRunData.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

.field public static final enum close:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

.field public static final close_VALUE:I = 0x1

.field public static final enum delete:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

.field public static final delete_VALUE:I = 0x3

.field public static final enum initial:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

.field public static final initial_VALUE:I = 0x0

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

.field public static final open_VALUE:I = 0x2


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    const-string/jumbo v1, "initial"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->initial:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    .line 55
    new-instance v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    const-string/jumbo v1, "close"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->close:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    .line 56
    new-instance v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    const-string/jumbo v1, "open"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    .line 57
    new-instance v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    const-string/jumbo v1, "delete"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->delete:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    sget-object v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->initial:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->close:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->delete:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->$VALUES:[Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    .line 83
    new-instance v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput p4, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->value:I

    .line 94
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    sget-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 69
    packed-switch p0, :pswitch_data_0

    .line 74
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 70
    :pswitch_0
    sget-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->initial:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    goto :goto_0

    .line 71
    :pswitch_1
    sget-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->close:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    goto :goto_0

    .line 72
    :pswitch_2
    sget-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    goto :goto_0

    .line 73
    :pswitch_3
    sget-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->delete:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->$VALUES:[Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->value:I

    return v0
.end method
