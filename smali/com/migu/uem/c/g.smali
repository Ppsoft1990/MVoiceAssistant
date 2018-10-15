.class public final Lcom/migu/uem/c/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/migu/uem/c/g;


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "uem_sdk"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/uem/c/g;->b:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/migu/uem/c/g;
    .locals 1

    sget-object v0, Lcom/migu/uem/c/g;->a:Lcom/migu/uem/c/g;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/migu/uem/c/g;->a:Lcom/migu/uem/c/g;

    iget-object v0, v0, Lcom/migu/uem/c/g;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/migu/uem/c/g;

    invoke-direct {v0, p0}, Lcom/migu/uem/c/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/migu/uem/c/g;->a:Lcom/migu/uem/c/g;

    :cond_1
    sget-object v0, Lcom/migu/uem/c/g;->a:Lcom/migu/uem/c/g;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/migu/uem/c/g;->b:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/migu/uem/c/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/c/g;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/c/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/migu/uem/c/g;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/c/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/c/g;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/c/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/c/g;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/c/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    :cond_0
    return p2
.end method

.method public final b(Ljava/lang/String;)J
    .locals 3

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/migu/uem/c/g;->b:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/migu/uem/c/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/c/g;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/c/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public final c(Ljava/lang/String;)J
    .locals 3

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/migu/uem/c/g;->b:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/migu/uem/c/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method
