.class public final enum Lcom/iflytek/viafly/smartschedule/EffectEvent;
.super Ljava/lang/Enum;
.source "EffectEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/smartschedule/EffectEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/smartschedule/EffectEvent;

.field public static final enum bottombtn:Lcom/iflytek/viafly/smartschedule/EffectEvent;

.field public static final enum close:Lcom/iflytek/viafly/smartschedule/EffectEvent;

.field public static final enum content:Lcom/iflytek/viafly/smartschedule/EffectEvent;

.field public static final enum edit:Lcom/iflytek/viafly/smartschedule/EffectEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/iflytek/viafly/smartschedule/EffectEvent;

    const-string/jumbo v1, "close"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/EffectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/EffectEvent;->close:Lcom/iflytek/viafly/smartschedule/EffectEvent;

    .line 13
    new-instance v0, Lcom/iflytek/viafly/smartschedule/EffectEvent;

    const-string/jumbo v1, "edit"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/smartschedule/EffectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/EffectEvent;->edit:Lcom/iflytek/viafly/smartschedule/EffectEvent;

    .line 16
    new-instance v0, Lcom/iflytek/viafly/smartschedule/EffectEvent;

    const-string/jumbo v1, "content"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/smartschedule/EffectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/EffectEvent;->content:Lcom/iflytek/viafly/smartschedule/EffectEvent;

    .line 19
    new-instance v0, Lcom/iflytek/viafly/smartschedule/EffectEvent;

    const-string/jumbo v1, "bottombtn"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/smartschedule/EffectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/EffectEvent;->bottombtn:Lcom/iflytek/viafly/smartschedule/EffectEvent;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/viafly/smartschedule/EffectEvent;

    sget-object v1, Lcom/iflytek/viafly/smartschedule/EffectEvent;->close:Lcom/iflytek/viafly/smartschedule/EffectEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/smartschedule/EffectEvent;->edit:Lcom/iflytek/viafly/smartschedule/EffectEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/smartschedule/EffectEvent;->content:Lcom/iflytek/viafly/smartschedule/EffectEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/smartschedule/EffectEvent;->bottombtn:Lcom/iflytek/viafly/smartschedule/EffectEvent;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/viafly/smartschedule/EffectEvent;->$VALUES:[Lcom/iflytek/viafly/smartschedule/EffectEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/EffectEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/iflytek/viafly/smartschedule/EffectEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/EffectEvent;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/smartschedule/EffectEvent;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/iflytek/viafly/smartschedule/EffectEvent;->$VALUES:[Lcom/iflytek/viafly/smartschedule/EffectEvent;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/smartschedule/EffectEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/smartschedule/EffectEvent;

    return-object v0
.end method
