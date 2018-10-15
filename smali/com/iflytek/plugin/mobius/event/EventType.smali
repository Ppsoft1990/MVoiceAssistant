.class public final enum Lcom/iflytek/plugin/mobius/event/EventType;
.super Ljava/lang/Enum;
.source "EventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/plugin/mobius/event/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/plugin/mobius/event/EventType;

.field public static final enum AUTH_SUCCESS:Lcom/iflytek/plugin/mobius/event/EventType;

.field public static final enum USER_LOGIN:Lcom/iflytek/plugin/mobius/event/EventType;

.field public static final enum USER_LOGOUT:Lcom/iflytek/plugin/mobius/event/EventType;

.field public static final enum USER_LONGTOKEN_GET:Lcom/iflytek/plugin/mobius/event/EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/iflytek/plugin/mobius/event/EventType;

    const-string/jumbo v1, "USER_LOGIN"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/plugin/mobius/event/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/plugin/mobius/event/EventType;->USER_LOGIN:Lcom/iflytek/plugin/mobius/event/EventType;

    .line 12
    new-instance v0, Lcom/iflytek/plugin/mobius/event/EventType;

    const-string/jumbo v1, "USER_LOGOUT"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/plugin/mobius/event/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/plugin/mobius/event/EventType;->USER_LOGOUT:Lcom/iflytek/plugin/mobius/event/EventType;

    .line 14
    new-instance v0, Lcom/iflytek/plugin/mobius/event/EventType;

    const-string/jumbo v1, "USER_LONGTOKEN_GET"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/plugin/mobius/event/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/plugin/mobius/event/EventType;->USER_LONGTOKEN_GET:Lcom/iflytek/plugin/mobius/event/EventType;

    .line 16
    new-instance v0, Lcom/iflytek/plugin/mobius/event/EventType;

    const-string/jumbo v1, "AUTH_SUCCESS"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/plugin/mobius/event/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/plugin/mobius/event/EventType;->AUTH_SUCCESS:Lcom/iflytek/plugin/mobius/event/EventType;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/plugin/mobius/event/EventType;

    sget-object v1, Lcom/iflytek/plugin/mobius/event/EventType;->USER_LOGIN:Lcom/iflytek/plugin/mobius/event/EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/plugin/mobius/event/EventType;->USER_LOGOUT:Lcom/iflytek/plugin/mobius/event/EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/plugin/mobius/event/EventType;->USER_LONGTOKEN_GET:Lcom/iflytek/plugin/mobius/event/EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/plugin/mobius/event/EventType;->AUTH_SUCCESS:Lcom/iflytek/plugin/mobius/event/EventType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/plugin/mobius/event/EventType;->$VALUES:[Lcom/iflytek/plugin/mobius/event/EventType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/plugin/mobius/event/EventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/plugin/mobius/event/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/plugin/mobius/event/EventType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/plugin/mobius/event/EventType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/plugin/mobius/event/EventType;->$VALUES:[Lcom/iflytek/plugin/mobius/event/EventType;

    invoke-virtual {v0}, [Lcom/iflytek/plugin/mobius/event/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/plugin/mobius/event/EventType;

    return-object v0
.end method
