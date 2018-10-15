.class public Lcom/migu/voiceads/utils/download/d/b;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/migu/voiceads/utils/download/d/b;


# instance fields
.field public final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/Random;

.field private g:Landroid/app/NotificationManager;

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "TEST_TITLE"

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/d/b;->b:Ljava/lang/String;

    const-string/jumbo v0, "TEST_CONTENT"

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/d/b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/migu/voiceads/utils/download/d/b;->a:I

    iput-object p1, p0, Lcom/migu/voiceads/utils/download/d/b;->e:Landroid/content/Context;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/d/b;->f:Ljava/util/Random;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/d/b;->h:Ljava/util/HashMap;

    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/d/b;->g:Landroid/app/NotificationManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/migu/voiceads/utils/download/d/b;
    .locals 1

    sget-object v0, Lcom/migu/voiceads/utils/download/d/b;->d:Lcom/migu/voiceads/utils/download/d/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/migu/voiceads/utils/download/d/b;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/utils/download/d/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/migu/voiceads/utils/download/d/b;->d:Lcom/migu/voiceads/utils/download/d/b;

    :cond_0
    sget-object v0, Lcom/migu/voiceads/utils/download/d/b;->d:Lcom/migu/voiceads/utils/download/d/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;J)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/b;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    long-to-int v0, p2

    :goto_0
    iget-object v2, p0, Lcom/migu/voiceads/utils/download/d/b;->h:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/migu/voiceads/utils/download/d/b;->h:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/b;->f:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/b;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public a(Ljava/lang/String;JLandroid/app/Notification;)V
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/b;->g:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/migu/voiceads/utils/download/d/b;->a(Ljava/lang/String;J)I

    move-result v1

    invoke-virtual {v0, v1, p4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Lcom/migu/voiceads/utils/download/d/b;->a()V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/b;->g:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/b;->h:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;J)V
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lcom/migu/voiceads/utils/download/d/b;->b(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/b;->g:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/migu/voiceads/utils/download/d/b;->a(Ljava/lang/String;J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method
