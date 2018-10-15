.class public Lbal;
.super Ljava/lang/Object;
.source "NotificationVersionUpdate.java"

# interfaces
.implements Lvu$a;


# static fields
.field private static a:Lbal;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lbag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lbal;->a:Lbal;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lbal;->b:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public static a(Landroid/content/Context;)Lbal;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lbal;->a:Lbal;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lbal;

    invoke-direct {v0, p0}, Lbal;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbal;->a:Lbal;

    .line 56
    :cond_0
    sget-object v0, Lbal;->a:Lbal;

    return-object v0
.end method

.method protected static c()Z
    .locals 6

    .prologue
    .line 155
    const/4 v2, 0x1

    .line 156
    .local v2, "ret":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 157
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 160
    .local v1, "hour":I
    const/16 v3, 0x16

    if-ge v1, v3, :cond_0

    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    .line 161
    :cond_0
    const-string/jumbo v3, "NotificationVersionUpdate"

    const-string/jumbo v4, "-------->> current time is in 22:00~08:00"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v2, 0x0

    .line 164
    :cond_1
    const-string/jumbo v3, "NotificationVersionUpdate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isCurrentTimeShow() | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return v2
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 67
    iget-object v3, p0, Lbal;->b:Landroid/content/Context;

    invoke-static {v3}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v3

    invoke-virtual {v3}, Lhl;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    iget-object v3, p0, Lbal;->b:Landroid/content/Context;

    invoke-static {v3}, Lvu;->b(Landroid/content/Context;)Lvu;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Lvu;->d()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v1

    .line 72
    .local v1, "updateInfo":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    if-nez v1, :cond_1

    .line 73
    const-string/jumbo v3, "NotificationVersionUpdate"

    const-string/jumbo v4, "updateInfo is null"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v3, p0, Lbal;->b:Landroid/content/Context;

    invoke-static {v3}, Lvu;->b(Landroid/content/Context;)Lvu;

    move-result-object v3

    invoke-virtual {v3, v6, p0, v6}, Lvu;->a(ILvu$a;Z)V

    .line 92
    .end local v1    # "updateInfo":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    :cond_0
    :goto_0
    return-void

    .line 78
    .restart local v1    # "updateInfo":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    :cond_1
    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "updateVersion":Ljava/lang/String;
    invoke-virtual {p0}, Lbal;->b()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "oldVersion":Ljava/lang/String;
    const-string/jumbo v3, "NotificationVersionUpdate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateVersion is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", oldVersion is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    :cond_2
    iget-object v3, p0, Lbal;->b:Landroid/content/Context;

    invoke-static {v3}, Lvu;->b(Landroid/content/Context;)Lvu;

    move-result-object v3

    invoke-virtual {v3, v6, p0, v6}, Lvu;->a(ILvu$a;Z)V

    goto :goto_0

    .line 89
    .end local v0    # "oldVersion":Ljava/lang/String;
    .end local v1    # "updateInfo":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    .end local v2    # "updateVersion":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "NotificationVersionUpdate"

    const-string/jumbo v4, "Not Connect Network"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 244
    const-string/jumbo v0, "NotificationVersionUpdate"

    const-string/jumbo v1, "onVerionCheckError"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method public a(Lbag;)V
    .locals 0
    .param p1, "listener"    # Lbag;

    .prologue
    .line 248
    iput-object p1, p0, Lbal;->c:Lbag;

    .line 249
    return-void
.end method

.method public a(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .prologue
    .line 217
    const-string/jumbo v0, "NotificationVersionUpdate"

    const-string/jumbo v1, "onVersionCheckResult"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0, p1}, Lbal;->b(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lbal;->c:Lbag;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lbal;->c:Lbag;

    invoke-interface {v0, p1}, Lbag;->a(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)V

    .line 239
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 138
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_NOTIFICATION_HISTORY_PROCESSED_VERSION"

    invoke-virtual {v2, v3}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "oldVersion":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 141
    iget-object v2, p0, Lbal;->b:Landroid/content/Context;

    invoke-static {v2}, Lhl;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "currentVersion":Ljava/lang/String;
    move-object v1, v0

    .line 143
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_NOTIFICATION_HISTORY_PROCESSED_VERSION"

    invoke-virtual {v2, v3, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v0    # "currentVersion":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public b(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .prologue
    const/4 v1, 0x0

    .line 103
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 105
    :cond_0
    const-string/jumbo v2, "NotificationVersionUpdate"

    const-string/jumbo v3, "isNeedShowUpdate updateinfo is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    return v1

    .line 110
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v2

    sget-object v3, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->NoNeed:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    if-ne v2, v3, :cond_2

    .line 111
    const-string/jumbo v2, "NotificationVersionUpdate"

    const-string/jumbo v3, "isNeedShowUpdate UpdateType.NoNeed"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_2
    const-string/jumbo v2, "2001"

    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateShowId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 117
    const-string/jumbo v2, "NotificationVersionUpdate"

    const-string/jumbo v3, "isNeedShowUpdate UpdateShowId.Home_SHOW_TYPE"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {p0}, Lbal;->b()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "oldVersion":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    const-string/jumbo v2, "NotificationVersionUpdate"

    const-string/jumbo v3, "isNeedShowUpdate UpdateVersion.oldVersion"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_4
    invoke-static {}, Lbal;->c()Z

    move-result v2

    if-nez v2, :cond_5

    .line 130
    const-string/jumbo v2, "NotificationVersionUpdate"

    const-string/jumbo v3, "isNeedShowUpdate show time is error"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method
