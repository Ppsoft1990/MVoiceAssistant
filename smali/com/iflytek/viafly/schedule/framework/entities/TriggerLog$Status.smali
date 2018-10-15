.class public final enum Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;
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
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

.field public static final enum create:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

.field public static final create_VALUE:I = 0x0

.field public static final enum finish:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

.field public static final finish_VALUE:I = 0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    const-string/jumbo v1, "create"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->create:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    .line 14
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    const-string/jumbo v1, "finish"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->finish:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->create:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->finish:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    .line 36
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p4, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->value:I

    .line 47
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 24
    packed-switch p0, :pswitch_data_0

    .line 27
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 25
    :pswitch_0
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->create:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    goto :goto_0

    .line 26
    :pswitch_1
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->finish:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->value:I

    return v0
.end method
