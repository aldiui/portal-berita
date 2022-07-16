import { Link } from "@inertiajs/inertia-react";

const Paginator = ({ meta }) => {
    const prev = meta.links[0].url;
    const next = meta.links[meta.links.length - 1].url;
    const current = meta.current_page;
    return (
        <div className="btn-group bg-teal-200 rounded-md">
            {prev && <Link href={prev} className="btn btn-outline">«</Link>}
            <Link className="btn btn-outline">Page {current}</Link>
            {next && <Link href={next} className="btn btn-outline">»</Link>}
        </div>
    );
};

export default Paginator;
