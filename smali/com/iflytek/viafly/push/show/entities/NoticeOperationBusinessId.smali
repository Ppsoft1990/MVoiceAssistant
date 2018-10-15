.class public final enum Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;
.super Ljava/lang/Enum;
.source "NoticeOperationBusinessId.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;

.field public static final enum HotPlazaActivity:Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;

.field public static final enum HotPlazaStory:Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;

.field public static final enum ScheduleEdit:Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;

    const-string/jumbo v1, "HotPlazaStory"

    const-string/jumbo v2, "HotPlazaStory"

    invoke-direct {v0, v1, v3, v2}, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;->HotPlazaStory:Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;

    .line 13
    new-instance v0, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;

    const-string/jumbo v1, "HotPlazaActivity"

    const-string/jumbo v2, "HotPlazaActivity"

    invoke-direct {v0, v1, v4, v2}, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;->HotPlazaActivity:Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;

    .line 16
    new-instance v0, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;

    const-string/jumbo v1, "ScheduleEdit"

    const-string/jumbo v2, "ScheduleEdit"

    invoke-direct {v0, v1, v5, v2}, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;->ScheduleEdit:Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;

    sget-object v1, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;->HotPlazaStory:Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;->HotPlazaActivity:Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;->ScheduleEdit:Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;->$VALUES:[Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;->value:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;

    return-object v0
.end method

.method public static valueOfValue(Ljava/lang/String;)Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 29
    if-nez p0, :cond_1

    move-object v0, v2

    .line 38
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :cond_1
    invoke-static {}, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;->values()[Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;

    move-result-object v1

    .line 33
    .local v1, "types":[Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 34
    .local v0, "item":Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;
    iget-object v5, v0, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;->value:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "item":Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;
    :cond_2
    move-object v0, v2

    .line 38
    goto :goto_0
.end method

.method public static values()[Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;->$VALUES:[Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/viafly/push/show/entities/NoticeOperationBusinessId;->value:Ljava/lang/String;

    return-object v0
.end method
