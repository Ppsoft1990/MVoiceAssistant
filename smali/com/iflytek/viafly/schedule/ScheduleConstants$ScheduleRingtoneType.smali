.class public final enum Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
.super Ljava/lang/Enum;
.source "ScheduleConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/ScheduleConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScheduleRingtoneType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

.field public static final enum EMPTY:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

.field public static final enum LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

.field public static final enum LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

.field public static final enum MORE:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

.field public static final enum NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

.field public static final enum PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

.field public static final enum RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

.field public static final enum SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

.field public static final enum WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 366
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v1, "SHORT"

    const-string/jumbo v2, "short"

    invoke-direct {v0, v1, v4, v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 367
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v1, "LONG"

    const-string/jumbo v2, "long"

    invoke-direct {v0, v1, v5, v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 368
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v1, "WEATHER"

    const-string/jumbo v2, "weather"

    invoke-direct {v0, v1, v6, v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 369
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v1, "NEWS"

    const-string/jumbo v2, "news"

    invoke-direct {v0, v1, v7, v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 370
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v1, "RECORD"

    const-string/jumbo v2, "record"

    invoke-direct {v0, v1, v8, v2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 371
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v1, "LOCAL"

    const/4 v2, 0x5

    const-string/jumbo v3, "local"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 372
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v1, "PERSONAL"

    const/4 v2, 0x6

    const-string/jumbo v3, "personal"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 373
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v1, "EMPTY"

    const/4 v2, 0x7

    const-string/jumbo v3, "empty"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->EMPTY:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 374
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    const-string/jumbo v1, "MORE"

    const/16 v2, 0x8

    const-string/jumbo v3, "more"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->MORE:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 365
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->EMPTY:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->MORE:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->$VALUES:[Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 376
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 377
    iput-object p3, p0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->mValue:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 365
    const-class v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    return-object v0
.end method

.method public static valueToType(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 384
    if-nez p0, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-object v0

    .line 387
    :cond_1
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->EMPTY:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 388
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->EMPTY:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    goto :goto_0

    .line 389
    :cond_2
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 390
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    goto :goto_0

    .line 391
    :cond_3
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 392
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    goto :goto_0

    .line 393
    :cond_4
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 394
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    goto :goto_0

    .line 395
    :cond_5
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 396
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    goto :goto_0

    .line 397
    :cond_6
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 398
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    goto :goto_0

    .line 399
    :cond_7
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 400
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    goto :goto_0

    .line 401
    :cond_8
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 402
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    goto :goto_0

    .line 403
    :cond_9
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->MORE:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->MORE:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    goto :goto_0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->$VALUES:[Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    return-object v0
.end method


# virtual methods
.method public ValueOf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->mValue:Ljava/lang/String;

    return-object v0
.end method
