.class public Lakm;
.super Ljava/lang/Object;
.source "HomeCardDbManager.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lakm;


# instance fields
.field private c:Lakl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "HomeCardDbManager"

    sput-object v0, Lakm;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lakl;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lakl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lakm;->c:Lakl;

    .line 20
    return-void
.end method

.method public static a()Lakm;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lakm;->b:Lakm;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lakm;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lakm;->b:Lakm;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lakm;

    invoke-direct {v0}, Lakm;-><init>()V

    sput-object v0, Lakm;->b:Lakm;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lakm;->b:Lakm;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "onlyKey"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "version"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lakm;->c:Lakl;

    invoke-virtual {v0, p1, p2, p3}, Lakl;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lakm;->c:Lakl;

    invoke-virtual {v0, p1}, Lakl;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Laic;)V
    .locals 1
    .param p1, "homeCardItem"    # Laic;

    .prologue
    .line 45
    iget-object v0, p0, Lakm;->c:Lakl;

    invoke-virtual {v0, p1}, Lakl;->a(Laic;)I

    .line 46
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lakm;->c:Lakl;

    invoke-virtual {v0, p1, p2}, Lakl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p3, "contentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "contentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lakm;->c:Lakl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lakl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 96
    return-void
.end method

.method public b(Ljava/lang/String;)Laic;
    .locals 1
    .param p1, "onlyKey"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lakm;->c:Lakl;

    invoke-virtual {v0, p1}, Lakl;->b(Ljava/lang/String;)Laic;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lakm;->c:Lakl;

    invoke-virtual {v0}, Lakl;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "onlyKey"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lakm;->c:Lakl;

    invoke-virtual {v0, p1}, Lakl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lakm;->c:Lakl;

    invoke-virtual {v0, p1}, Lakl;->d(Ljava/lang/String;)V

    .line 91
    return-void
.end method
