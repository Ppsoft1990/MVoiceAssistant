.class public Lfw;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:J

.field public h:I

.field public i:C

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const v0, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lfw;->a:I

    iput v2, p0, Lfw;->b:I

    iput v2, p0, Lfw;->c:I

    iput v2, p0, Lfw;->d:I

    iput v0, p0, Lfw;->e:I

    iput v0, p0, Lfw;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfw;->g:J

    iput v2, p0, Lfw;->h:I

    iput-char v3, p0, Lfw;->i:C

    iput-boolean v3, p0, Lfw;->j:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfw;->g:J

    return-void
.end method

.method public constructor <init>(IIIIIC)V
    .locals 4

    const v0, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lfw;->a:I

    iput v2, p0, Lfw;->b:I

    iput v2, p0, Lfw;->c:I

    iput v2, p0, Lfw;->d:I

    iput v0, p0, Lfw;->e:I

    iput v0, p0, Lfw;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfw;->g:J

    iput v2, p0, Lfw;->h:I

    iput-char v3, p0, Lfw;->i:C

    iput-boolean v3, p0, Lfw;->j:Z

    iput p1, p0, Lfw;->a:I

    iput p2, p0, Lfw;->b:I

    iput p3, p0, Lfw;->c:I

    iput p4, p0, Lfw;->d:I

    iput p5, p0, Lfw;->h:I

    iput-char p6, p0, Lfw;->i:C

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfw;->g:J

    return-void
.end method

.method public constructor <init>(Lfw;)V
    .locals 7

    iget v1, p1, Lfw;->a:I

    iget v2, p1, Lfw;->b:I

    iget v3, p1, Lfw;->c:I

    iget v4, p1, Lfw;->d:I

    iget v5, p1, Lfw;->h:I

    iget-char v6, p1, Lfw;->i:C

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lfw;-><init>(IIIIIC)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    const/4 v0, 0x2

    iget v1, p0, Lfw;->c:I

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lfw;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lfw;->c:I

    const/16 v1, 0x1cc

    if-eq v0, v1, :cond_0

    iget v0, p0, Lfw;->c:I

    const/16 v1, 0x1c6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lfw;->c:I

    const/16 v1, 0x1c7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lfw;->c:I

    const/16 v1, 0x1d2

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lfw;)Z
    .locals 2

    iget v0, p0, Lfw;->a:I

    iget v1, p1, Lfw;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lfw;->b:I

    iget v1, p1, Lfw;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lfw;->d:I

    iget v1, p1, Lfw;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lfw;->c:I

    iget v1, p1, Lfw;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lfw;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lfw;->a:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lfw;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lfw;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lfw;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lfw;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lfw;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lfw;->a:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lfw;->b:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lfw;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lfw;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lfw;->a:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lfw;->b:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lfw;->d:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lfw;->c:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfw;->j:Z

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v1, p0, Lfw;->b:I

    add-int/lit8 v1, v1, 0x17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lfw;->a:I

    add-int/lit8 v1, v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lfw;->d:I

    add-int/lit8 v1, v1, 0x36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Q"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lfw;->c:I

    add-int/lit16 v1, v1, 0xcb

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lfw;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v1, "<cell-tower>\n<mcc>%d</mcc><mnc>%d</mnc><lac>%d</lac><ci>%d</ci><rssi>%d</rssi></cell-tower>"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lfw;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lfw;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lfw;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lfw;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lfw;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string/jumbo v1, "&nw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-char v1, p0, Lfw;->i:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v2, "&cl=%d|%d|%d|%d&cl_s=%d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lfw;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lfw;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lfw;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lfw;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lfw;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lfw;->j:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "&newcl=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
