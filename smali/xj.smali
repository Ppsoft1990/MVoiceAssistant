.class public Lxj;
.super Lwo;
.source "PluginLogHelper.java"


# static fields
.field private static b:Lxj;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public static a(Landroid/content/Context;)Lxj;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lxj;->b:Lxj;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lxj;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lxj;-><init>(Landroid/content/Context;)V

    sput-object v0, Lxj;->b:Lxj;

    .line 31
    :cond_0
    sget-object v0, Lxj;->b:Lxj;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string/jumbo v0, "PluginLogHelper"

    const-string/jumbo v1, "appendMobiusEntryOplog | entry is null or empty"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v5, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_source"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v1, "FT93001"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lxj;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
