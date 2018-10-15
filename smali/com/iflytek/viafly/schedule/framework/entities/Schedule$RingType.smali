.class public final enum Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;
.super Ljava/lang/Enum;
.source "Schedule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

.field public static final enum def:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

.field public static final enum increase:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

.field public static final enum smooth:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

.field public static final enum weaken:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 196
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

    const-string/jumbo v1, "def"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;->def:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

    .line 200
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

    const-string/jumbo v1, "smooth"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;->smooth:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

    .line 204
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

    const-string/jumbo v1, "increase"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;->increase:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

    .line 208
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

    const-string/jumbo v1, "weaken"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;->weaken:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

    .line 192
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;->def:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;->smooth:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;->increase:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;->weaken:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

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
    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 192
    const-class v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/framework/entities/Schedule$RingType;

    return-object v0
.end method
