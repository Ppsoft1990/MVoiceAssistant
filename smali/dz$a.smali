.class Ldz$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Ldz;

.field private c:Ljava/lang/Long;

.field private d:Lcom/baidu/location/BDLocation;

.field private e:Lcom/baidu/location/BDLocation;

.field private f:Lcom/baidu/location/BDLocation;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/LinkedHashMap;


# direct methods
.method private constructor <init>(Ldz;Ljava/lang/String;Ljava/lang/Long;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 0

    iput-object p1, p0, Ldz$a;->b:Ldz;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Ldz$a;->a:Ljava/lang/String;

    iput-object p3, p0, Ldz$a;->c:Ljava/lang/Long;

    iput-object p4, p0, Ldz$a;->d:Lcom/baidu/location/BDLocation;

    iput-object p5, p0, Ldz$a;->e:Lcom/baidu/location/BDLocation;

    iput-object p6, p0, Ldz$a;->f:Lcom/baidu/location/BDLocation;

    iput-object p7, p0, Ldz$a;->g:Ljava/lang/String;

    iput-object p8, p0, Ldz$a;->h:Ljava/util/LinkedHashMap;

    return-void
.end method

.method synthetic constructor <init>(Ldz;Ljava/lang/String;Ljava/lang/Long;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Ljava/lang/String;Ljava/util/LinkedHashMap;Lea;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Ldz$a;-><init>(Ldz;Ljava/lang/String;Ljava/lang/Long;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Ldz$a;->b:Ldz;

    iget-object v1, p0, Ldz$a;->a:Ljava/lang/String;

    iget-object v2, p0, Ldz$a;->c:Ljava/lang/Long;

    iget-object v3, p0, Ldz$a;->d:Lcom/baidu/location/BDLocation;

    invoke-static {v0, v1, v2, v3}, Ldz;->a(Ldz;Ljava/lang/String;Ljava/lang/Long;Lcom/baidu/location/BDLocation;)V

    iget-object v0, p0, Ldz$a;->b:Ldz;

    invoke-static {v0, v6}, Ldz;->a(Ldz;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Ldz$a;->b:Ldz;

    invoke-static {v0, v6}, Ldz;->b(Ldz;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Ldz$a;->b:Ldz;

    iget-object v1, p0, Ldz$a;->h:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ldz;->a(Ldz;Ljava/util/LinkedHashMap;)V

    iget-object v0, p0, Ldz$a;->b:Ldz;

    iget-object v1, p0, Ldz$a;->f:Lcom/baidu/location/BDLocation;

    iget-object v2, p0, Ldz$a;->d:Lcom/baidu/location/BDLocation;

    iget-object v3, p0, Ldz$a;->e:Lcom/baidu/location/BDLocation;

    iget-object v4, p0, Ldz$a;->a:Ljava/lang/String;

    iget-object v5, p0, Ldz$a;->c:Ljava/lang/Long;

    invoke-static/range {v0 .. v5}, Ldz;->a(Ldz;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Ldz$a;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldz$a;->b:Ldz;

    invoke-static {v0}, Ldz;->a(Ldz;)Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->j()Lej;

    move-result-object v0

    iget-object v1, p0, Ldz$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lej;->a(Ljava/lang/String;)V

    :cond_0
    iput-object v6, p0, Ldz$a;->h:Ljava/util/LinkedHashMap;

    iput-object v6, p0, Ldz$a;->a:Ljava/lang/String;

    iput-object v6, p0, Ldz$a;->g:Ljava/lang/String;

    iput-object v6, p0, Ldz$a;->c:Ljava/lang/Long;

    iput-object v6, p0, Ldz$a;->d:Lcom/baidu/location/BDLocation;

    iput-object v6, p0, Ldz$a;->e:Lcom/baidu/location/BDLocation;

    iput-object v6, p0, Ldz$a;->f:Lcom/baidu/location/BDLocation;

    return-void
.end method
