.class public final enum Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;
.super Ljava/lang/Enum;
.source "IntentMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/server/service/IntentMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

.field public static final enum activity:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

.field public static final enum provider:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

.field public static final enum receiver:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

.field public static final enum service:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    const-string/jumbo v1, "activity"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->activity:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    .line 33
    new-instance v0, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    const-string/jumbo v1, "service"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->service:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    .line 34
    new-instance v0, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    const-string/jumbo v1, "receiver"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->receiver:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    .line 35
    new-instance v0, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    const-string/jumbo v1, "provider"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->provider:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    sget-object v1, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->activity:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->service:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->receiver:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->provider:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->$VALUES:[Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->$VALUES:[Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    invoke-virtual {v0}, [Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    return-object v0
.end method
