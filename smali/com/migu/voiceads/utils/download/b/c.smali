.class public Lcom/migu/voiceads/utils/download/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:J

.field protected c:J

.field protected d:J

.field protected e:I

.field protected f:I

.field protected g:[B

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Z

.field protected n:Z

.field protected o:I

.field protected p:I

.field protected q:I

.field protected r:Ljava/lang/String;

.field protected s:Ljava/lang/String;

.field protected t:Z

.field protected u:Z

.field protected v:Z

.field protected w:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/b/c;->g:[B

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZLjava/lang/String;IZZZZZLjava/lang/String;[BLjava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/migu/voiceads/utils/download/b/c;->g:[B

    iput-wide p1, p0, Lcom/migu/voiceads/utils/download/b/c;->b:J

    iput p3, p0, Lcom/migu/voiceads/utils/download/b/c;->q:I

    iput-object p4, p0, Lcom/migu/voiceads/utils/download/b/c;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/migu/voiceads/utils/download/b/c;->r:Ljava/lang/String;

    iput-object p6, p0, Lcom/migu/voiceads/utils/download/b/c;->j:Ljava/lang/String;

    iput-object p7, p0, Lcom/migu/voiceads/utils/download/b/c;->i:Ljava/lang/String;

    iput-object p8, p0, Lcom/migu/voiceads/utils/download/b/c;->l:Ljava/lang/String;

    iput p9, p0, Lcom/migu/voiceads/utils/download/b/c;->p:I

    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/migu/voiceads/utils/download/b/c;->d:J

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/migu/voiceads/utils/download/b/c;->c:J

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/migu/voiceads/utils/download/b/c;->t:Z

    iput p10, p0, Lcom/migu/voiceads/utils/download/b/c;->f:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/b/c;->h:Ljava/lang/String;

    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/migu/voiceads/utils/download/b/c;->m:Z

    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/migu/voiceads/utils/download/b/c;->n:Z

    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/migu/voiceads/utils/download/b/c;->w:Z

    move/from16 v0, p17

    iput v0, p0, Lcom/migu/voiceads/utils/download/b/c;->o:I

    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/migu/voiceads/utils/download/b/c;->v:Z

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/b/c;->s:Ljava/lang/String;

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/migu/voiceads/utils/download/b/c;->u:Z

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/b/c;->g:[B

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/b/c;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/migu/voiceads/utils/download/b/c;->c:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/migu/voiceads/utils/download/b/c;->f:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/migu/voiceads/utils/download/b/c;->c:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/download/b/c;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/migu/voiceads/utils/download/b/c;->m:Z

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/download/b/c;->g:[B

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/migu/voiceads/utils/download/b/c;->f:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/migu/voiceads/utils/download/b/c;->o:I

    return-void
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/migu/voiceads/utils/download/b/c;->b:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/download/b/c;->j:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/migu/voiceads/utils/download/b/c;->n:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/b/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/migu/voiceads/utils/download/b/c;->p:I

    return-void
.end method

.method public c(J)V
    .locals 1

    iput-wide p1, p0, Lcom/migu/voiceads/utils/download/b/c;->d:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/download/b/c;->i:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/migu/voiceads/utils/download/b/c;->t:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/b/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/migu/voiceads/utils/download/b/c;->q:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/download/b/c;->k:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/migu/voiceads/utils/download/b/c;->v:Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/b/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/migu/voiceads/utils/download/b/c;->e:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/download/b/c;->l:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/migu/voiceads/utils/download/b/c;->w:Z

    return-void
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/migu/voiceads/utils/download/b/c;->b:J

    return-wide v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/download/b/c;->r:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/b/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/download/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/download/b/c;->s:Ljava/lang/String;

    return-void
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/migu/voiceads/utils/download/b/c;->m:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/migu/voiceads/utils/download/b/c;->n:Z

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/migu/voiceads/utils/download/b/c;->o:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/migu/voiceads/utils/download/b/c;->p:I

    return v0
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Lcom/migu/voiceads/utils/download/b/c;->d:J

    return-wide v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/migu/voiceads/utils/download/b/c;->q:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/b/c;->r:Ljava/lang/String;

    return-object v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/migu/voiceads/utils/download/b/c;->t:Z

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/migu/voiceads/utils/download/b/c;->v:Z

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/b/c;->s:Ljava/lang/String;

    return-object v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/migu/voiceads/utils/download/b/c;->u:Z

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/migu/voiceads/utils/download/b/c;->e:I

    return v0
.end method

.method public u()[B
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/b/c;->g:[B

    return-object v0
.end method
