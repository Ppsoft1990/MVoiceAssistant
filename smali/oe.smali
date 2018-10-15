.class public Loe;
.super Ljava/lang/Object;
.source "IflyNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loe$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Loe$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Loe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Loe;->a:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Loe;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/common/notice/NotificationParam;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/iflytek/common/notice/NotificationParam;

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/common/notice/NotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string/jumbo v1, "param"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 105
    return-object v0
.end method

.method private static a(I)V
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 163
    sget-object v0, Loe;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeEventListener(), id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v0, Loe;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "business"    # Ljava/lang/String;

    .prologue
    .line 68
    :try_start_0
    new-instance v2, Lcom/iflytek/common/notice/NotificationParam;

    invoke-direct {v2, p1, p2}, Lcom/iflytek/common/notice/NotificationParam;-><init>(ILjava/lang/String;)V

    .line 69
    .local v2, "param":Lcom/iflytek/common/notice/NotificationParam;
    const-string/jumbo v3, "com.iflytek.cmcc.ACTION_CANCEL_NOTICE"

    invoke-static {p0, v3, v2}, Loe;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/common/notice/NotificationParam;)Landroid/content/Intent;

    move-result-object v1

    .line 70
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0, v1}, Loe;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "param":Lcom/iflytek/common/notice/NotificationParam;
    :goto_0
    invoke-static {p1}, Loe;->a(I)V

    .line 76
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Loe;->a:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intentService"    # Landroid/content/Intent;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 110
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/common/notice/NotificationParam;Loe$a;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;
    .param p2, "listener"    # Loe$a;

    .prologue
    .line 85
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/iflytek/common/notice/NotificationParam;->business:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/iflytek/common/notice/NotificationParam;->title:Ljava/lang/String;

    .line 86
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/iflytek/common/notice/NotificationParam;->content:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    :try_start_0
    const-string/jumbo v2, "com.iflytek.cmcc.ACTION_UPDATE_NOTICE"

    invoke-static {p0, v2, p1}, Loe;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/common/notice/NotificationParam;)Landroid/content/Intent;

    move-result-object v1

    .line 91
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0, v1}, Loe;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    if-eqz p2, :cond_0

    .line 97
    sget-object v2, Loe;->b:Ljava/util/Map;

    iget v3, p1, Lcom/iflytek/common/notice/NotificationParam;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Loe;->a:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static a(Lcom/iflytek/common/notice/NotificationParam;)V
    .locals 3
    .param p0, "param"    # Lcom/iflytek/common/notice/NotificationParam;

    .prologue
    .line 113
    if-nez p0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    sget-object v1, Loe;->b:Ljava/util/Map;

    iget v2, p0, Lcom/iflytek/common/notice/NotificationParam;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loe$a;

    .line 117
    .local v0, "listener":Loe$a;
    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0, p0}, Loe$a;->a(Lcom/iflytek/common/notice/NotificationParam;)V

    .line 120
    iget v1, p0, Lcom/iflytek/common/notice/NotificationParam;->flag:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    iget v1, p0, Lcom/iflytek/common/notice/NotificationParam;->flag:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 122
    iget v1, p0, Lcom/iflytek/common/notice/NotificationParam;->id:I

    invoke-static {v1}, Loe;->a(I)V

    goto :goto_0
.end method

.method public static a(Lcom/iflytek/common/notice/NotificationParam;I)V
    .locals 3
    .param p0, "param"    # Lcom/iflytek/common/notice/NotificationParam;
    .param p1, "btnResId"    # I

    .prologue
    .line 143
    if-nez p0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    sget-object v1, Loe;->b:Ljava/util/Map;

    iget v2, p0, Lcom/iflytek/common/notice/NotificationParam;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loe$a;

    .line 147
    .local v0, "listener":Loe$a;
    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0, p0, p1}, Loe$a;->a(Lcom/iflytek/common/notice/NotificationParam;I)V

    .line 150
    iget v1, p0, Lcom/iflytek/common/notice/NotificationParam;->flag:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    iget v1, p0, Lcom/iflytek/common/notice/NotificationParam;->flag:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 152
    iget v1, p0, Lcom/iflytek/common/notice/NotificationParam;->id:I

    invoke-static {v1}, Loe;->a(I)V

    goto :goto_0
.end method

.method public static b(Lcom/iflytek/common/notice/NotificationParam;)V
    .locals 3
    .param p0, "param"    # Lcom/iflytek/common/notice/NotificationParam;

    .prologue
    .line 128
    if-nez p0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    sget-object v1, Loe;->b:Ljava/util/Map;

    iget v2, p0, Lcom/iflytek/common/notice/NotificationParam;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loe$a;

    .line 132
    .local v0, "listener":Loe$a;
    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p0}, Loe$a;->b(Lcom/iflytek/common/notice/NotificationParam;)V

    .line 135
    iget v1, p0, Lcom/iflytek/common/notice/NotificationParam;->flag:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    iget v1, p0, Lcom/iflytek/common/notice/NotificationParam;->flag:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 137
    iget v1, p0, Lcom/iflytek/common/notice/NotificationParam;->id:I

    invoke-static {v1}, Loe;->a(I)V

    goto :goto_0
.end method
