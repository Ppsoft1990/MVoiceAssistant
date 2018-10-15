.class public abstract Laxr;
.super Ljava/lang/Object;
.source "AbsTranslateLanguageInfo.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Laxr;->a:Z

    return-void
.end method

.method private A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string/jumbo v0, "\u8bf7\u8bf4\u4e2d\u6587"

    return-object v0
.end method

.method private B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    const-string/jumbo v0, "\u7ffb\u8bd1"

    return-object v0
.end method

.method private x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "\u6b63\u5728\u7ffb\u8bd1"

    return-object v0
.end method

.method private y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    return-object v0
.end method

.method private z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string/jumbo v0, "\u7ffb\u8bd1\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f020245

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 146
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Laxr;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Laxr;->y()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .param p1, "micRightBtnTrigger"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Laxr;->a:Z

    .line 135
    return-void
.end method

.method public a(Lcom/iflytek/viafly/translate/TranslateMode;)Z
    .locals 1
    .param p1, "mode"    # Lcom/iflytek/viafly/translate/TranslateMode;

    .prologue
    .line 272
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Laxr;->v()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/translate/TranslateMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "\u4e2d\u6587"

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 217
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Laxr;->s()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Laxr;->B()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method public c(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 241
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Laxr;->j()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Laxr;->x()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d(I)Lcom/iflytek/viafly/translate/TranslateMode;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 249
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Laxr;->v()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Laxr;->u()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "\u672a\u68c0\u6d4b\u5230\u58f0\u97f3\uff0c\u8bf7\u91cd\u65b0\u8bf4\u8bdd"

    return-object v0
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method public abstract g()I
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method protected abstract i()Ljava/lang/String;
.end method

.method protected abstract j()Ljava/lang/String;
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Laxr;->a:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Laxr;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laxr;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Laxr;->y()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Laxr;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laxr;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Laxr;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Laxr;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laxr;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Laxr;->z()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Laxr;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laxr;->i()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Laxr;->A()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Laxr;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laxr;->j()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Laxr;->x()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Laxr;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Laxr;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laxr;->g()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Laxr;->a()I

    move-result v0

    goto :goto_0
.end method

.method protected abstract s()Ljava/lang/String;
.end method

.method public t()Lcom/iflytek/viafly/translate/TranslateMode;
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Laxr;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laxr;->v()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Laxr;->u()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract u()Lcom/iflytek/viafly/translate/TranslateMode;
.end method

.method protected abstract v()Lcom/iflytek/viafly/translate/TranslateMode;
.end method

.method public abstract w()Ljava/lang/String;
.end method
