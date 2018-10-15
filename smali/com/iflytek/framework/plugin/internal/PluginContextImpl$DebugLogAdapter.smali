.class final Lcom/iflytek/framework/plugin/internal/PluginContextImpl$DebugLogAdapter;
.super Ljava/lang/Object;
.source "PluginContextImpl.java"

# interfaces
.implements Lcom/iflytek/yd/log/IDebugLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/plugin/internal/PluginContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DebugLogAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/plugin/internal/PluginContextImpl;


# direct methods
.method private constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$DebugLogAdapter;->this$0:Lcom/iflytek/framework/plugin/internal/PluginContextImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl;Lcom/iflytek/framework/plugin/internal/PluginContextImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginContextImpl;
    .param p2, "x1"    # Lcom/iflytek/framework/plugin/internal/PluginContextImpl$1;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$DebugLogAdapter;-><init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {p1, p2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 194
    invoke-static {p1, p2, p3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-static {p1, p2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 229
    invoke-static {p1, p2, p3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public getElapsedRealtime(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {p1, p2}, Lhj;->f(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExceptionTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 244
    invoke-static {p1}, Lhj;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemCurrentTime(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-static {p1, p2}, Lhj;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {p1, p2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 204
    invoke-static {p1, p2, p3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 254
    invoke-static {}, Lhj;->a()Z

    move-result v0

    return v0
.end method

.method public saveLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "logContent"    # Ljava/lang/String;

    .prologue
    .line 250
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-static {p1, p2}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 184
    invoke-static {p1, p2, p3}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-static {p1, p2}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 214
    invoke-static {p1, p2, p3}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 219
    invoke-static {p1, p2}, Lhj;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
