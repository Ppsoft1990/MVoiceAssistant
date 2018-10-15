.class public Loh;
.super Ljava/lang/Object;
.source "NotificationController.java"


# static fields
.field private static final b:Ljava/lang/String;

.field private static e:Loh;


# instance fields
.field public final a:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Ljava/util/Random;

.field private h:Landroid/app/NotificationManager;

.field private i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Loh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Loh;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string/jumbo v0, "TEST_TITLE"

    iput-object v0, p0, Loh;->c:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "TEST_CONTENT"

    iput-object v0, p0, Loh;->d:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Loh;->a:I

    .line 41
    iput-object p1, p0, Loh;->f:Landroid/content/Context;

    .line 43
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Loh;->g:Ljava/util/Random;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Loh;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Loh;->h:Landroid/app/NotificationManager;

    .line 46
    return-void
.end method

.method public static a()Loh;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Loh;->e:Loh;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Loh;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget-object v0, Loh;->e:Loh;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Loh;

    invoke-direct {v0, p0}, Loh;-><init>(Landroid/content/Context;)V

    sput-object v0, Loh;->e:Loh;

    .line 58
    :cond_0
    sget-object v0, Loh;->e:Loh;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "gp"    # Landroid/view/ViewGroup;

    .prologue
    .line 270
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 271
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 272
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 273
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 274
    .local v3, "text":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "szText":Ljava/lang/String;
    const-string/jumbo v4, "TEST_TITLE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    iput v4, p0, Loh;->j:I

    .line 271
    .end local v2    # "szText":Ljava/lang/String;
    .end local v3    # "text":Landroid/widget/TextView;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .restart local v2    # "szText":Ljava/lang/String;
    .restart local v3    # "text":Landroid/widget/TextView;
    :cond_1
    const-string/jumbo v4, "TEST_CONTENT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    iput v4, p0, Loh;->k:I

    goto :goto_1

    .line 280
    .end local v2    # "szText":Ljava/lang/String;
    .end local v3    # "text":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 281
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Loh;->a(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 284
    :cond_3
    return-void
.end method

.method public static a(II)Z
    .locals 10
    .param p0, "baseColor"    # I
    .param p1, "color"    # I

    .prologue
    const/high16 v5, -0x1000000

    .line 203
    or-int v3, p0, v5

    .line 204
    .local v3, "simpleBaseColor":I
    or-int v4, p1, v5

    .line 205
    .local v4, "simpleColor":I
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v8

    sub-int v2, v5, v8

    .line 206
    .local v2, "baseRed":I
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v8

    sub-int v1, v5, v8

    .line 207
    .local v1, "baseGreen":I
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    sub-int v0, v5, v8

    .line 208
    .local v0, "baseBlue":I
    mul-int v5, v2, v2

    mul-int v8, v1, v1

    add-int/2addr v5, v8

    mul-int v8, v0, v0

    add-int/2addr v5, v8

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 209
    .local v6, "value":D
    const-wide v8, 0x4066800000000000L    # 180.0

    cmpg-double v5, v6, v8

    if-gez v5, :cond_0

    .line 210
    const/4 v5, 0x1

    .line 212
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;J)I
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Loh;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 79
    .local v2, "value":Ljava/lang/Integer;
    if-nez v2, :cond_1

    .line 80
    long-to-int v1, p2

    .line 81
    .local v1, "newId":I
    :goto_0
    iget-object v3, p0, Loh;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    iget-object v3, p0, Loh;->g:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v1

    goto :goto_0

    .line 84
    :cond_0
    iget-object v3, p0, Loh;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .end local v1    # "newId":I
    :goto_1
    return v1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method

.method private g()V
    .locals 7

    .prologue
    .line 238
    :try_start_0
    new-instance v0, Lm$d;

    iget-object v5, p0, Loh;->f:Landroid/content/Context;

    invoke-direct {v0, v5}, Lm$d;-><init>(Landroid/content/Context;)V

    .line 239
    .local v0, "builder":Lm$d;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lm$d;->a(Landroid/app/PendingIntent;)Lm$d;

    move-result-object v5

    const-string/jumbo v6, "TEST_TITLE"

    invoke-virtual {v5, v6}, Lm$d;->a(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v5

    const-string/jumbo v6, "TEST_CONTENT"

    invoke-virtual {v5, v6}, Lm$d;->b(Ljava/lang/CharSequence;)Lm$d;

    .line 240
    invoke-virtual {v0}, Lm$d;->a()Landroid/app/Notification;

    move-result-object v4

    .line 241
    .local v4, "notification":Landroid/app/Notification;
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Loh;->f:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 242
    .local v3, "group":Landroid/widget/LinearLayout;
    iget-object v5, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v6, p0, Loh;->f:Landroid/content/Context;

    invoke-virtual {v5, v6, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 243
    .local v2, "event":Landroid/view/ViewGroup;
    invoke-direct {p0, v2}, Loh;->a(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v0    # "builder":Lm$d;
    .end local v2    # "event":Landroid/view/ViewGroup;
    .end local v3    # "group":Landroid/widget/LinearLayout;
    .end local v4    # "notification":Landroid/app/Notification;
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Loh;->b:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;J)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    .line 97
    iget-object v0, p0, Loh;->i:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public a(Ljava/lang/String;JLandroid/app/Notification;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "notification"    # Landroid/app/Notification;

    .prologue
    .line 128
    invoke-static {}, Lcom/iflytek/yd/log/Logging;->isDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Loh;->b:Ljava/lang/String;

    const-string/jumbo v1, "postNotification"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    iget-object v0, p0, Loh;->h:Landroid/app/NotificationManager;

    invoke-direct {p0, p1, p2, p3}, Loh;->c(Ljava/lang/String;J)I

    move-result v1

    invoke-virtual {v0, v1, p4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 133
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Loh;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 105
    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    .line 141
    invoke-static {}, Lcom/iflytek/yd/log/Logging;->isDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Loh;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelNotification id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Loh;->a(Ljava/lang/String;J)V

    .line 146
    iget-object v0, p0, Loh;->h:Landroid/app/NotificationManager;

    invoke-direct {p0, p1, p2, p3}, Loh;->c(Ljava/lang/String;J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 147
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 154
    invoke-static {}, Lcom/iflytek/yd/log/Logging;->isDebugLogging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    sget-object v1, Loh;->b:Ljava/lang/String;

    const-string/jumbo v2, "cancelAllNotifications"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    iget-object v1, p0, Loh;->i:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Loh;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 158
    iget-object v1, p0, Loh;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 159
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iget-object v2, p0, Loh;->h:Landroid/app/NotificationManager;

    iget-object v1, p0, Loh;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 164
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0}, Loh;->b()V

    .line 166
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Loh;->l:Z

    if-nez v0, :cond_0

    .line 175
    invoke-direct {p0}, Loh;->g()V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Loh;->l:Z

    .line 182
    :cond_0
    iget v0, p0, Loh;->j:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Loh;->l:Z

    if-nez v0, :cond_0

    .line 192
    invoke-direct {p0}, Loh;->g()V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Loh;->l:Z

    .line 199
    :cond_0
    iget v0, p0, Loh;->k:I

    return v0
.end method

.method public f()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 221
    const-string/jumbo v4, "vivo X1St"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 233
    :cond_0
    :goto_0
    return v2

    .line 226
    :cond_1
    const-string/jumbo v4, "ivvi C5-T"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 231
    invoke-virtual {p0}, Loh;->d()I

    move-result v1

    .line 232
    .local v1, "color":I
    const-string/jumbo v4, "#ff000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 233
    .local v0, "baseColor":I
    invoke-static {v0, v1}, Loh;->a(II)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method
