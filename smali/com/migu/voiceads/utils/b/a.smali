.class public Lcom/migu/voiceads/utils/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/migu/voiceads/utils/b/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/migu/voiceads/utils/b/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/migu/voiceads/utils/b/a$a;->b:Lcom/migu/voiceads/utils/b/a$a;

    iput-object v0, p0, Lcom/migu/voiceads/utils/b/a;->d:Lcom/migu/voiceads/utils/b/a$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/migu/voiceads/utils/b/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/b/a;->d:Lcom/migu/voiceads/utils/b/a$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "migu_image_cache"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/migu/voiceads/utils/b/a$a;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/b/a;->d:Lcom/migu/voiceads/utils/b/a$a;

    return-object v0
.end method
