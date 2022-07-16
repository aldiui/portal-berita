const isNews = (news) => {
    return news.map((data, i) => {
        return (
            <div key={i} className="card w-full md:w-96 bg-slate-50 shadow-xl">
                <figure>
                    <img
                        src="https://placeimg.com/400/225/arch"
                        className="w-full"
                        alt="Shoes"
                    />
                </figure>
                <div className="card-body">
                    <h2 className="card-title">
                        {data.title}
                        <div className="badge badge-secondary">NEW</div>
                    </h2>
                    <p>{data.description}</p>
                    <div className="card-actions justify-end">
                        <div className="badge badge-inline">
                            {data.category}
                        </div>
                        <div className="badge badge-outline">{data.author}</div>
                    </div>
                </div>
            </div>
        );
    });
};

const noNews = () => {
    return <div>Saat Ini belum ada berita tersedia</div>;
};

const Newslist = ({ news }) => {
    return !news ? noNews() : isNews(news);
};

export default Newslist;
